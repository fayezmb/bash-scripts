#!/bin/bash

echo Made by Fayez Barakji , fayezbarakji@gmail.com
names=(www ftp mail owa proxy router admin ww2 firewall mx pop3 ww3 smtp)
for name in "${names[@]}"
do
host $name.$1| grep "has address" | cut -d" " -f1,4
done
