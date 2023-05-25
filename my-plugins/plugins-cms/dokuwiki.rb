Plugin.define do
name "DokuWiki"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "DokuWiki is a standards compliant, simple to use Wiki, mainly aimed at creating documentation of any kind."
website "http://dokuwiki.org/"
dorks [
'"powered by DokuWiki" inurl:doku.php filetype:php'
]
matches [
{:ghdb=>'"powered by DokuWiki" inurl:doku.php filetype:php'},
{:offset=>1, :regexp=>/^DokuWiki( Release [\d-]+)?/, :search=>'body'},
{:regexp=>/<a[^>]+href="#dokuwiki__/},
{:regexp=>/<div class="dokuwiki"[\s]?>/},
{:regexp=>/<div[^>]+id="dokuwiki__>/},
{:text=>'<div id="dokuwiki'},
{:text=>'<meta name="generator" content="DokuWiki" />'},
{:text=>'content="DokuWiki'},
{:text=>'powered by DokuWiki'},
{:url=>"/favicon.ico",:allhash=>"3ef81fad2a3deaeb19f02c9cf67ed8eb"},
{:version=>/<meta name="generator" content="DokuWiki Release ([^"]+)" \/>/},
]
end