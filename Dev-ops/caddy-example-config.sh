https://rpc.harpoon-3.highlander-nodes.net {
   reverse_proxy http://135.181.209.51:26867 {
       header_down Access-Control-Allow-Origin *
   }
   log {
       output file /var/log/caddy/rpc.harpoon-3.highlander-nodes.net.log
   }
}

https://api.harpoon-3.highlander-nodes.net {
   reverse_proxy http://135.181.209.51:1527 {
       header_down Access-Control-Allow-Origin *
   }
   log {
       output file /var/log/caddy/api.harpoon-3.highlander-nodes.net.log
   }
}