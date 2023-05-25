Plugin.define do
name "reos"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "REOS is hi-end software solution designed to help real estate agents, brokers and offices to easily present their properties on the internet."
website "http://www.reosonline.com/"
matches [
{:text=>'Powered by <a href="http://reos.elazos.com">ReOS</a>'},
{:version=>/Powered by <a href="http:\/\/reos.elazos.com">ReOS ([\d\.]+)<\/a> and released under the <a href="http:\/\/creativecommons.org\/licenses\/GPL\/2.0\/">GNU\/GPL License.<\/a>/},
{:version=>/Powered by <a href="http:\/\/reos.elazos.com">ReOS ([\d\.]+)<\/a> and released under the <a href="http:\/\/www.fsf.org\/licensing\/licenses\/agpl\-3\.0\.html">GNU\/AGPLv3 License.<\/a>/},
]
end
