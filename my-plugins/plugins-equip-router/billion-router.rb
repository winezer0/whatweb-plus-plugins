Plugin.define do
name "billion-router"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Billion router"
website "http://www.billion.com/product/product.html"
matches [
{:search=>"headers", :text=>'Basic realm="WebAdmin")'},
{:search=>"headers", :text=>'Billion Sky'},
]
end
