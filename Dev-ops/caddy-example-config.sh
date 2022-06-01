# remove config and add this as an example config.
# once you have done so you need to restart service 
# ```sudo systemctl restart caddy.service```
# sudo ufw allow 443/tcp comment 'Caddy HTTPS' 
# this allows caddy to publish services via this port


https://rpc.harpoon-3.highlander-nodes.net {
   reverse_proxy http://YOUR-IP-ADD-HERE:26867 {
       header_down Access-Control-Allow-Origin *
   }
   log {
       output file /var/log/caddy/rpc.harpoon-3.highlander-nodes.net.log
   }
}

https://api.harpoon-3.highlander-nodes.net {
   reverse_proxy http://YOUR-IP-HERE:1527 {
       header_down Access-Control-Allow-Origin *
   }
   log {
       output file /var/log/caddy/api.harpoon-3.highlander-nodes.net.log
   }
}