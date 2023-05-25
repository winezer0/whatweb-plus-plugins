Plugin.define do
name "CS-Cart"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CS-Cart is a full e-commerce solution for small to medium sized businesses. The software uses PHP4 and MySQL to provide an easy, quick and flexible interface, allowing you to produce a high functionality on-line store in minutes. It is all 100% template driven!"
website "http://www.cs-cart.com/"
dorks [
'"Powered By CS-Cart - Shopping Cart Software"'
]
matches [
{:regexp=>/&nbsp;Powered by (?:<a href=[^>]+cs-cart\.com|CS-Cart)/},
{:regexp=>/Powered by <a href="http:\/\/www.cs-cart.com" target="_blank"[^>]+>CS-Cart - Shopping Cart Software<\/a>/},
{:regexp=>/\.cm-noscript[^>]+<.style>/},
{:text=>"	text_required_group_product: 'Please select a product for the required group [group_name]',"},
{:text=>"<title>CS-Cart. Powerful PHP shopping cart software</title>"},
]
end
