# remove config and add this as an example config.
# once you have done so you need to restart service 
# ```sudo systemctl restart caddy.service```
# sudo ufw allow 443/tcp comment 'Caddy HTTPS' 
# this allows caddy to publish services via this port


https://rpc.juno.highlander-nodes.net {
   reverse_proxy http://YOUR-IP-ADD-HERE {
       header_down Access-Control-Allow-Origin *
   }
   log {
       output file /var/log/caddy/rpc.juno.highlander-nodes.net.log
   }
}

https://api.juno.highlander-nodes.net {
   reverse_proxy http://YOUR-IP-HERE {
       header_down Access-Control-Allow-Origin *
   }
   log {
       output file /var/log/caddy/api.juno.highlander-nodes.net.log
   }
}