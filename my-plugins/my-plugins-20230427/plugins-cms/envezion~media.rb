Plugin.define do
name "envezion~media"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "envezion~MEDIA makes it possible for the small business owner to you reach your goals through our consulting services."
website "http://envezion.com/"
dorks [
'"powered by envezion~media"'
]
matches [
{:text=>'Powered by <a href="http://envezion.com/"><strong>envezion~MEDIA</strong></a>'},
{:text=>'Powered by <a href="http://envezion.com/">envezion~MEDIA</a>'},
{:text=>'Powered by <a href="http://www.envezion.com" target="_blank"><strong> envezion~media</strong></a><br />'},
]
end
