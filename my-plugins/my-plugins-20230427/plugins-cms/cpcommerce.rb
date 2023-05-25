Plugin.define do
name "cpCommerce"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web shopping cart"
website "http://cpcommerce.org/"
matches [
{:text=>'        Powered by cpCommerce'},
{:text=>'    <title>cpCommerce by Matthew Wilkin</title>'},
{:text=>'Powered by <a href="http://cpcommerce.cpradio.org/" target="_blank">cpCommerce</a>.'},
{:text=>'Powered by <a href="http://cpcommerce.org/" target="_blank">cpCommerce</a>.'},
]
end
