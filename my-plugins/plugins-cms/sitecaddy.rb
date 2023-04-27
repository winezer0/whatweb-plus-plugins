Plugin.define do
name "SiteCaddy"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Site Caddy offers a suite of online tools for marketing, content management, e-commerce and hosting"
website "http://info.sitecaddy.com/mysitecaddy/site3/"
dorks [
'inurl:"mysitecaddy/site"|inurl:"mysitecaddy/site3"'
]
matches [
{:text=>'<!-- SECTION: bottom branding -->'},
{:text=>'<!-- write title and meta tags -->'},
{:text=>'<a href="http://www.sitecaddy.com" title="Powered by SiteCaddy.com">'},
{:text=>'<img src="/mysitecaddy/assets3/common/images/poweredbysitecaddy.gif" alt="Powered by SiteCaddy.com">'},
{:text=>'<ul class="siteCaddyMenu menuLevel0 bottomNav" id="primaryNav">'},
]
end
