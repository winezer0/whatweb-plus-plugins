Plugin.define do
name "QuesCom-Qportal"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Qportal web interface for QuesCom telephony devices"
website "http://www.quescom.com/products.asp"
matches [
{:text=>'<head profile="http://www.quescom.com">'},
{:text=>'<link href="/qpuser.css" rel="stylesheet" type="text/css">'},
{:url=>"/Oem/topright.gif", :md5=>"8ddc6366869cf61044d7bc4b21ca1b1e"},
{:url=>"/userframes.asp", :text=>'<FRAME src="/cticall/cticall_close.asp" name="cticlose" frameborder="no" scrolling="no" marginwidth="0" marginheight="0">'},
]
passive do
m=[]
if @headers["server"] =~ /^OctoWebSvr\/COM$/
m << { :name=>"HTTP Server Header" }
end
m
end
end
