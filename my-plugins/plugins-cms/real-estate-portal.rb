Plugin.define do
name "real-estate-portal"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NetArtMedia Real Estate Portal allows you to launch powerful and professional looking real estate portals with rich functionalities for the private sellers, buyers and real estate agents to list properties for sale or rent, search in the database, show featured ads and many others."
website "http://www.netartmedia.net/realestate/"
matches [
{:text=>'			document.form1.property_type.options[i] = new Option(CurrentModels[i], CurrentModels[i], 0, 0);'},
{:text=>'Powered by <a href="http://www.netartmedia.net/realestate" target="_blank">Real Estate Portal</a>'},
{:text=>'Powered by <a href="http://www.netartmedia.net/realestate">Real Estate Portal</a>'},
]
end
