Plugin.define do
name "WebSideStory"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "
HBX Analytics service is a comprehensive on-demand web analytics solution, delivering up-to-the second insight into online visitor and customer behavior."
website "http://www.websidestory.com/"
matches [
{:regexp=>/<!--COPYRIGHT 1997-[0-9]{4} WEBSIDESTORY,INC. ALL RIGHTS RESERVED. U.S.PATENT No. 6,393,479B1. MORE INFO:http:\/\/websidestory.com\/privacy-->/},
{:text=>'<!-- WebSideStory HTML for Search -->'},
{:text=>'<!--END WEBSIDESTORY CODE-->'},
{:text=>'<a href="http://websidestory.com/" target="_blank">Powered by WebSideStory</a>'},
{:text=>'Search powered by <a class="external" href="http://www.websidestory.com/">WebSideStory</a>'},
{:version=>/<!--WEBSIDESTORY CODE ([^\ ]+) /},
]
end
