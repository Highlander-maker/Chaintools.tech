# create A record for your RPC's and API's 
# host needs to be set rpc.juno
# host needs to be set api.juno



ping <rpc-add-here> #see if you get response


#clear cache command for CLI 
sudo dscacheutil -flushcache

sudo killall -HUP mDNSResponder


