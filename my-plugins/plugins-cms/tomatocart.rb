Plugin.define do
name "TomatoCart"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Shopping Cart"
website "http://www.tomatocart.com/"
matches [
{:md5=>"600924763aa7af6c968f53e0f6d9e608", :url=>"/templates/glass_gray/images/tomatocart.ico"},
{:search=>"all", :text=>'TomatoCart'},
{:search=>'body', :regexp=>/TomatoCart/},
{:text=>'<meta name="generator" content="TomatoCart Open Source Shopping Cart Solutions" />'},
{:text=>'Powered by <a href="http://www.tomatocart.com" target="_blank">TomatoCart</a>'},
]
end
