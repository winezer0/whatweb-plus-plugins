Plugin.define do
name "MivaMerchant"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MivaMerchant is a flexible and powerful eCommerce software that help businesses set up a professional online store, shopping cart system, secure checkout, and more."
website "http://www.mivamerchant.com/"
dorks [
'inurl:merchant.mvc ext:mvc'
]
matches [
{:ghdb=>'inurl:merchant.mvc filetype:mvc'},
{:search=>"headers[set-cookie]", :regexp=>/htscallerid=/},
{:text=>'<div id="mmcategorytree">'},
]
end
