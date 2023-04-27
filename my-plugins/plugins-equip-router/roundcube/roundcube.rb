Plugin.define do
name "roundcube"
authors [
"Andrew Horton",

]
version "0.2"
description "Opensource Webmail written in PHP"
website "http://roundcube.net/"
matches [
{:regexp=>/<title>RoundCube/},
{:search=>"headers", :text=>'roundcube_sessid'},
{:text=>"<title>RoundCube Webmail :: Welcome to RoundCube Webmail</title>"},
{:text=>"var rcmail = new rcube_webmail();"},
{:text=>'$(document).ready(function(){ rcmail.init(); });'},
{:text=>'<input name="_user" id="rcmloginuser"'},
{:url=>"/favicon.ico",:allhash=>"e9469705a8ac323e403d74c11425a62b"},
]
passive do
m=[]
m << {:name=>"roundcube_sessid cookie" } if @headers["set-cookie"] =~ /roundcube_sessid/i		
m
end
end
