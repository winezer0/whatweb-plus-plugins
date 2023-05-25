Plugin.define do
name "Zen-Cart"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton",
]
version "0.3"
description "Zen Cart. truly is the art of e-commerce; free, user-friendly, open source shopping cart software."
website "http://www.zen-cart.com"
dorks [
'"Powered by Zen Cart!, The Art of E-commerce"'
]
matches [
{:search=>"headers", :text=>'Set-Cookie: zenid='},
{:search=>'body', :regexp=>/Zen Cart/},
{:text=>"Powered by Zen Cart!, The Art of E-commerce</title>"},
{:text=>'<meta name="authors" content="The Zen Cart&trade; Team and others'},
{:text=>'<meta name="generator" content="shopping cart program by Zen Cart&trade;, http://www.zen-cart.com'},
{:text=>'Powered by <a href="http://www.zen-cart.com" target="_blank">Zen Cart</a>'},
{:text=>'shopping cart program by Zen Cart'},
]
end