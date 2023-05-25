Plugin.define do
name "HikVision"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "HikVision cameras, Digital Video Servers (DVS) and Digital Video Records (DVR)"
website "http://www.hikvisionusa.com/"
matches [
{:search=>"headers[server]", :regexp=>/^Hikvision-Webs$/},
]
end
