Plugin.define do
name "goahead-web"
authors [
"Andrew Horton",

"Brendan Coles <bcoles@gmail.com>", 

]
version "0.4"
description "Opensource, embedded webserver"
website "http://embedthis.com/products/goahead/"
matches [
{:text=>"response_code_begin ERIC_RESPONSE_OK response_code_end response_msg_begin  response_msg_end"},
]
passive do
m=[]
m << {:name=>"HTTP Server header"} if @headers['server'] =~ /GoAhead-Webs/i
m
end
end
