Plugin.define do
name "rackstar-server-appliance-os"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "RackStar can be installed on almost any PC platform. That's what makes the RackStar Server Appliance Software so great! Now anyone can host sites! Still got a Cobalt RAQ? No problem! RackStar runs on that too!"
website "http://www.rackstar.net/"
matches [
{:search=>"headers[server]", :regexp=>/<A HREF='http:\/\/www.rackstar.net\/' TITLE='This server is powered by the RackStar Server Appliance OS'>RACKSTAR<\/A>/},
{:search=>"headers[server]", :regexp=>/\(<A HREF=http:\/\/www.rackstar.net\/>RACKSTAR<\/A>\)/},
]
end
