Plugin.define do
name "Vanilla-Forums"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Vanilla Forums - open-source, standards-compliant, customizable discussion forums."
website "http://vanillaforums.org/"
matches [
{:certainty=>25, :regexp=>/<body id=["'](DiscussionsPage|vanilla)/i},
{:search=>"headers[set-cookie]", :regexp=>/Vanilla=deleted; expires=/},
{:search=>"headers[x-garden-version]", :version=>/^Vanilla ([^\s]+)$/},
{:version=>/Powered by <a href="(http:\/\/)?getvanilla\.com\/?">Vanilla ([^\s^<]+)<\/a>/, :offset=>1},
]
end
