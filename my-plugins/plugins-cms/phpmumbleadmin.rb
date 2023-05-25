Plugin.define do
name "phpMumbleAdmin"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Php Mumble Admin is an administration panel control for murmur 1.2.0 and higher. It's communicate over ICE and It's designed for multiple servers."
website "http://phpmumbleadmin.sourceforge.net/"
passive do
m=[]
m << { :name=>"phpMumbleADMIN_session Cookie" } if @headers["set-cookie"] =~ /^phpMumbleADMIN_session=/
m
end
matches [
{:text=>'<tr><td><center><input type="submit" name="B1" value="  Login  " class="button"></center></td><td><input type="checkbox" name="remember" value="1"> Remember Me</td></tr>'},
{:version=>/<b><a href='http:\/\/phpMoneyBooks\.com'>phpMoneyBooks<\/a>: ([^\s]+) - <a href='http:\/\/StarHostDesign\.com'>Star Host Design, LLC &copy<\/a> 20[\d]{2} <\/b><\/div>/},
{:version=>/<b>phpMoneyBooks: ([^\s]+) - Star Host Design, LLC &copy 20[\d]{2} <\/b><\/div>/},
]
end