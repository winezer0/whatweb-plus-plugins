Plugin.define do
name "phpMoneyBooks"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpMoneyBooks - Open Source Financial Software - Requires: PHP/MySQL"
website "http://phpmoneybooks.com/"
dorks [
'"phpMoneyBooks" "Account ID" "password"'
]
matches [
{:text=>'<tr><td><center><input type="submit" name="B1" value="  Login  " class="button"></center></td><td><input type="checkbox" name="remember" value="1"> Remember Me</td></tr>'},
{:version=>/<b><a href='http:\/\/phpMoneyBooks\.com'>phpMoneyBooks<\/a>: ([^\s]+) - <a href='http:\/\/StarHostDesign\.com'>Star Host Design, LLC &copy<\/a> 20[\d]{2} <\/b><\/div>/},
{:version=>/<b>phpMoneyBooks: ([^\s]+) - Star Host Design, LLC &copy 20[\d]{2} <\/b><\/div>/},
]
end
