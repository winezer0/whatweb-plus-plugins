Plugin.define do
name "itweave"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Bitweaver is a free and open source web application framework and content management system. Its speed and power are ideal for large-scale community websites and corporate applications, but it is simple enough for non-technical small site users to set up and administrate. It comes fully featured on install but is modular and easy to extend."
website "http://www.bitweaver.org/"
dorks [
'"powered by bitweaver"'
]
matches [
{:text=>'<a id="poweredby" class="external" href="http://www.bitweaver.org">Powered by bitweaver</a>'},
{:text=>'<meta name="generator" content="bitweaver - http://www.bitweaver.org" />'},
{:text=>'content="bitweaver'},
{:text=>'href="http://www.bitweaver.org">Powered by'},
]
end
