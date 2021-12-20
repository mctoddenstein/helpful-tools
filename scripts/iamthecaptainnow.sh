#!/usr/bin/env bash

#enter in all FQDN's for the shcluster
echo Please enter the FQDNs of the machines in the cluster \(comma separated\, no spaces\) \(https\:\/\/\<FQDN\>\:\<mgmt\_port\>\,https\:\/\/\<FQDN\>\:\<mgmt\_port\>\,...\)
read hosts
read -p "Are you sure these "$hosts" are correct?" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    /opt/splunk/bin/splunk bootstrap shcluster-captain -servers_list "$hosts"
fi
