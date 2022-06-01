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