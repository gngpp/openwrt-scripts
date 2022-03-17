#!/bin/sh
opkg update && opkg install golang erlang
curl https://sh.rustup.rs -sSf | sh
