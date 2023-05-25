Plugin.define do
name "bitcoin-js-remote"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A JavaScript Remote for Bitcoin - bitcoin-js-remote is a user interface for Bitcoin written in JavaScript and released under the MIT/X11 License. It works in most modern browsers as well as on Android and iPhones."
website "http://tcatm.github.com/bitcoin-js-remote/"
dorks [
'"bitcoin-js-remote by tcatm" "This information is not transmitted, it\'ll only be stored in your wallet."'
]
matches [
{:certainty=>75, :text=>'<span id="balance"</span>'},
{:text=>'<p><a href="http://tcatm.github.com/bitcoin-js-remote">bitcoin-js-remote</a> <span id="version"></span> by <a href="mailto:tcatm@gawab.com">tcatm</a></p>'},
]
end
