Plugin.define do
name "Hotaru-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Hotaru CMS is an open source, plugin-powered PHP content management system (CMS)"
website "http://hotarucms.org/"
matches [
{:search=>"all", :text=>'Hotaru CMS'},
{:search=>'body', :regexp=>/Hotaru CMS/},
{:text=>'content="Hotaru'},
{:version=>/<meta name="generator" content="Hotaru CMS ([^\s^"^>]+)" \/>/},
]
end
