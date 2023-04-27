Plugin.define do
name "Zeus-Cart"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Control every facet of your store, from merchandising to promotions and more. There are no limits to creativity with ZeusCart."
website "http://www.ajsquare.com/AJE-Commerce/product-home.php"
dorks [
'"powered by ZeusCart"'
]
matches [
{:text=>'<img src="images/warning.gif">Warning: Installation directory exists ZEUSCART ROOT DIRECTORY/install. Please remove/rename this directory for security reasons.'},
{:text=>'<title>:: Zeuscart Admin Panel</title>'},
{:text=>'Powered by <a href="http://www.ajsquare.com/products/ecom/" style="color:#716f6f;" target="_blank">ZeusCart</a>'},
{:version=>/<title>[\s]+ZeusCart V([\d\.]+)[\s]+<\/title>/},
]
end
