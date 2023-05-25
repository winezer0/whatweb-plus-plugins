Plugin.define do
name "LandShop"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LandShop - Open Source Real Estate System"
website "http://www.landshop.gr/"
dorks [
'"Powered by LandShop" inurl:"action"'
]
matches [
{:regexp=>/<a class="white" href="http:\/\/www\.landshop\.gr" target="_blank" (alte="Samedia LandShop")? title="Samedia Landshop">Land[Ss]hop<sup>&reg;<\/sup><\/a><br>/},
{:text=>'<!--<A href="<#G_ADMIN_URL#>/action/contacts.php?action=list"><#list_contacts#></a>-->'},
{:text=>'<div class="more CAT" style="height:20px;margin:5px 0px 10px 0px;text-align:right"><a class="item fat"  href="ls.php?'},
]
end
