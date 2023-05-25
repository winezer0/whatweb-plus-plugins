Plugin.define do
name "hybrid-cluster"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Hybrid Web Cluster is a software product that sits on top of the infrastructure level to allow your application to run on the cloud without requiring any changes at the application level. It provides commodity web hosting in a distributed and fault-tolerant manner on a cluster of either real physical servers or virtual cloud computing infrastructure server instances."
website "http://www.hybrid-cluster.com/cloud-computing/"
matches [
{:search=>"headers", :text=>'Hybrid Cluster'},
{:version=>/^Hybrid Cluster\/([^\s]+)$/, :search=>"headers[server]"},
]
end
