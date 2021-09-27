#!/bin/bash

#echo "Insert domain below: example ---> Domain.com"
#domain = read

for palavra in $(cat lista_dns_brute_force.txt);
do
host $palavra.$1 | grep -v "NXDOMAIN"
done
