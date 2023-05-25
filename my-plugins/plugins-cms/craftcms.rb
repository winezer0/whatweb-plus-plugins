Plugin.define do
name "CraftCMS"
authors [
"Bhavin Senjaliya <bhavin.senjaliya@gmail.com>",
"Andrew Horton",
]
version "0.2"
description "Craft CMS"
website "http://craftcms.com/"
matches [
{:search=>"all", :text=>'Craftcms'},
{:search=>"headers[set-cookie]", :regexp=>/CraftSessionId/, :name=>"CraftSessionId cookie"},
{:text=>'<a id="poweredby" href="http://craftcms.com/" title="Powered by Craft CMS">', :name=>"Admin-Login-Page"},
]
end