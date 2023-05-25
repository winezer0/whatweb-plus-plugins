Plugin.define do
name "Lusca-Web-Proxy-Cache"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Lusca Web/Proxy Cache - Lusca is a fork of the Squid-2 development tree. The Lusca project aims to fix the shortcomings in the Squid-2 codebase whilst maintaining the the Squid-2 functionality and stability. Like its predecessor, Lusca supports the majority of HTTP/1.0 and HTTP/1.1 protocol and caching constructs including ETag/Variant entities. Among other things, it supports HTTP content load balancing, fail over, intelligent request/reply routing, high performance memory and disk caching, an overly-flexible access control system, support for both high performance forward and reverse proxy modes. It supports a variety of clustering protocols, including ICPv2, ICPv3, CARP and HTCP for both clustering and control. Lusca supports Cisco WCCPv2 interception in both software and hardware forwarding modes"
website "http://www.lusca.org/"
matches [
{:search=>"headers[server]", :regexp=>/^Lusca$/},
{:search=>"headers[server]", :version=>/^Lusca\/LUSCA_HEAD-([^\s]+)$/},
]
end
