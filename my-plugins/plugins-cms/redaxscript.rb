Plugin.define do
name "redaxscript"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Redaxscript is a free, PHP and MySQL driven website engine for small business and private websites. It's ultra lightweight, simple and customizable."
website "http://redaxscript.com/"
dorks [
'"Powered by Redaxscript"'
]
matches [
{:offset=>1, :regexp=>/^Redaxscript ([\d\.]+)/, :search=>'body'},
{:search=>"all", :text=>'Redaxscript'},
{:text=>'Powered by <a href="http://redaxscript.com">Redaxscript</a>'},
{:url=>"/favicon.ico",:allhash=>"368c15ac73f0096aa3daff8ff6f719f8"},
{:version=>/<meta name="generator" content="Redaxscript ([^\s^"]+)" \/>/},
{:version=>/Powered by <a href="http:\/\/redaxscript\.com" title="Redaxscript">Redaxscript<\/a> ([^\s^<]+)</},
]
end
