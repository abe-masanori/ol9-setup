#!/bin/bash -ux

FQDN=test.example.com
IPADDR=192.168.1.206
MASK=24
GATEWAY=192.168.1.1
DNS=192.168.1.1
IFNAME=enp0s3

HOSTNAME=`echo ${FQDN} | cut -d'.' -f1`
DOMAINNAME=`echo ${FQDN} | cut -d'.' -f2-`

echo -e "\n${IPADDR} ${HOSTNAME} ${FQDN}" | tee -a /etc/hosts

nmcli g h ${FQDN}

nmcli c m ${IFNAME} \
        ipv4.method manual \
        ipv4.address ${IPADDR}/${MASK} \
        ipv4.gateway ${GATEWAY} \
        ipv4.dns ${DNS} \
        ipv4.dns-search ${DOMAINNAME} \
        ipv6.method ignore

