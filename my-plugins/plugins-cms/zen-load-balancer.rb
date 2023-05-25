Plugin.define do
name "zen-load-balancer"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Zen Load Balancer is a complete solution for load balancing to provide a high availability for TCP and UDP services and data line communications."
website "http://www.zenloadbalancer.com/web/"
matches [
{:search=>"headers[www-authenticate]", :text=>'Basic realm="Zen Load Balancer"'},
{:url=>"/config/global.conf", :version=>/#version ZEN\s+\$version=\"([^\"]+)"/},
]
end
