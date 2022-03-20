#!/bin/bash

THIS_SCRIPT="sysinfo"
MOTD_DISABLE=""

SHOW_IP_PATTERN="^[ewr].*|^br.*|^lt.*|^umts.*"

DATA_STORAGE=/userdisk/data
MEDIA_STORAGE=/userdisk/snail


# don't edit below here
function display()
{
	# $1=name $2=value $3=red_limit $4=minimal_show_limit $5=unit $6=after $7=acs/desc{
	# battery red color is opposite, lower number
	if [[ "$1" == "Battery" ]]; then
		local great="<";
	else
		local great=">";
	fi
	if [[ -n "$2" && "$2" > "0" && (( "${2%.*}" -ge "$4" )) ]]; then
		printf "%-14s%s" "$1:"
		if awk "BEGIN{exit ! ($2 $great $3)}"; then
			echo -ne "\e[0;91m $2";
		else
			echo -ne "\e[0;92m $2";
		fi
		printf "%-1s%s\x1B[0m" "$5"
		printf "%-11s%s\t" "$6"
		return 1
	fi
} # display


function get_ip_addresses()
{
	local ips=()
	for f in /sys/class/net/*; do
		local intf=$(basename $f)
		# match only interface names starting with e (Ethernet), br (bridge), w (wireless), r (some Ralink drivers use ra<number> format)
		if [[ $intf =~ $SHOW_IP_PATTERN ]]; then
			local tmp=$(ip -4 addr show dev $intf | awk '/inet/ {print $2}' | cut -d'/' -f1)
			# add both name and IP - can be informative but becomes ugly with long persistent/predictable device names
			#[[ -n $tmp ]] && ips+=("$intf: $tmp")
			# add IP only
			[[ -n $tmp ]] && ips+=("$tmp")
		fi
	done
	echo "${ips[@]}"
} # get_ip_addresses


function storage_info()
{
	# storage info
	RootInfo=$(df -h /)
	root_usage=$(awk '/\// {print $(NF-1)}' <<<${RootInfo} | sed 's/%//g')
	root_total=$(awk '/\// {print $(NF-4)}' <<<${RootInfo})
} # storage_info


# query various systems and send some stuff to the background for overall faster execution.
# Works only with ambienttemp and batteryinfo since A20 is slow enough :)
storage_info
critical_load=$(( 1 + $(grep -c processor /proc/cpuinfo) / 2 ))

# get uptime, logged in users and load in one take
# 0. 23:14:05 up 1:00 load average: 0.00 0.04 0.10
# 1. 22:57:03 up 43 min load average: 0.84 0.27 0.09
# 2. 23:14:29 up 1:01 load average: 0.00 0.04 0.09
# 3. 22:58:05 up 23:30 load average: 0.06 0.05 0.01
# 4. 22:58:50 up 12 days 1:11 15 users load average: 7.61 6.93 6.32
# 5. 23:39:45 up 1 day 12 min load average: 0.06 0.01 0.00
UptimeString=$(uptime | tr -d ',')
time=$(awk -F" " '{print $3 " " $4}' <<<"${UptimeString}")
load="$(awk -F"average: " '{print $2}'<<<"${UptimeString}")"
case ${time} in
	1:*) # 1-2 hours
	hours_mins=$(awk -F" " '{print $3}' <<<"${UptimeString}")
    raw_mins=$(awk -F":" '{print $2}' <<<"${hours_mins}")
    mins=""
    time="$(awk -F":" '{print $1" hours, "}' <<<"${hours_mins}")$raw_mins mins"
    if [[ $raw_mins == 0* ]];
    then
        mins=$(awk -F"0" '{print $2}' <<<"${raw_mins}")
        time="$(awk -F":" '{print $1" hours, "}' <<<"${hours_mins}")$mins mins"
        if [[ $mins == "" ]]
        then
            time="$(awk -F":" '{print $1" hours, "}' <<<"${hours_mins}")0 mins"
        fi
    fi
	;;

	*:*) # 2-24 hours
	hours_mins=$(awk -F" " '{print $3}' <<<"${UptimeString}")
    raw_mins=$(awk -F":" '{print $2}' <<<"${hours_mins}")
    mins=""
    time="$(awk -F":" '{print $1" hours, "}' <<<"${hours_mins}")$raw_mins mins"
    if [[ $raw_mins == 0* ]];
    then
        mins=$(awk -F"0" '{print $2}' <<<"${raw_mins}")
        time="$(awk -F":" '{print $1" hours, "}' <<<"${hours_mins}")$mins mins"
        if [[ $mins == "" ]]
        then
            time="$(awk -F":" '{print $1" hours, "}' <<<"${hours_mins}")0 mins"
        fi
    fi
	;;

	*day | *days) # days
    days=$(awk -F" " '{print $3" days,"}'  <<<"${UptimeString}")
	hours_mins=$(awk -F" " '{print $5}' <<<"${UptimeString}")
    raw_mins=$(awk -F":" '{print $2}' <<<"${hours_mins}")
    mins=""
    time="$days $(awk -F":" '{print $1" hours, "}' <<<"${hours_mins}")$raw_mins mins"
    if [[ $raw_mins == 0* ]];
    then
        mins=$(awk -F"0" '{print $2}' <<<"${raw_mins}")
        time="$days $(awk -F":" '{print $1" hours, "}' <<<"${hours_mins}")$mins mins"
        if [[ $mins == "" ]]
        then
            time="$days $(awk -F":" '{print $1" hours, "}' <<<"${hours_mins}")0 mins"
        fi
    fi

    ifmin=$(awk -F" " '{print $6}' <<<"${UptimeString}")
    if [[ $ifmin == "min" ]]
    then
    time="$days $(awk -F" " '{print $5" mins"}' <<<"${UptimeString}")"
    fi
	;;

	*)
	time="$time"s""
esac

# memory and swap
mem_info=$(LC_ALL=C free -w 2>/dev/null | grep "^Mem" || LC_ALL=C free | grep "^Mem")
memory_usage=$(awk '{printf("%.0f",(($2-($4+$6))/$2) * 100)}' <<<${mem_info})
memory_total=$(awk '{printf("%d",$2/1024)}' <<<${mem_info})
swap_info=$(LC_ALL=C free -m | grep "^Swap")
swap_usage=$( (awk '/Swap/ { printf("%3.0f", $3/$2*100) }' <<<${swap_info} 2>/dev/null || echo 0) | tr -c -d '[:digit:]')
swap_total=$(awk '{print $(2)}' <<<${swap_info})

c=0
while [ ! -n "$(get_ip_addresses)" ];do
[ $c -eq 10 ] && break || let c++
sleep 1
done
ip_address="$(get_ip_addresses)"

# display info
display "Load" "${load%% *}" "${critical_load}" "0" "" "${load#* }"
printf "Uptime:    \x1B[92m%s\x1B[0m\t\t" "$time"
echo "" # fixed newline


display "Memory" "$memory_usage" "70" "0" " %" " of ${memory_total}MB"
display "Swap" "$swap_usage" "10" "0" " %" " of $swap_total""Mb"
printf "Address:   \x1B[92m%s\x1B[0m" "$ip_address"
echo "" # fixed newline

display "Storage" "$root_usage" "90" "1" "%" " of $root_total"
printf "Frequency: \x1B[92m%s\x1B[0m\t" "$(echo $(sh /sbin/cpuinfo) | cut -d '(' -f2|cut -d ')' -f1)"
echo ""
echo ""