Plugin.define do
name "APACHE-kylin" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/src="\/static\/(.*)\.png/},
{:text=>'url=kylin'},
]
end