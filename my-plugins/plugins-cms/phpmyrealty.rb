Plugin.define do
name "phpMyRealty"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpMyRealty - customizable real estate web application - Requires: PHP"
website "http://www.phpmyrealty.com/"
dorks [
'"Powered by phpMyRealty Professional"'
]
matches [
{:text=>'<!-- Main Content table : stop -->'},
{:text=>'<span class="table_header_text"> &nbsp;Administrator Control Panel</span>'},
{:text=>'Powered by <a href="http://www.phpmyrealty.com" target="_blank" style="font-size: 12px; font-family: arial">phpMyRealty Professional</a>'},
]
end
