Plugin.define do
name "Video-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Video CMS is the ultimate online video content publishing tool for professional webmasters. Whether you want to create a informational video website, video tutorial website, video sharing website, paid video service, or simply to develop your unique idea, Video CMS will help you do exactly that."
website "http://www.codemight.com/"
dorks [
'"powered by Video CMS"'
]
matches [
{:text=>'<p style="color:#aaaaaa;text-align:center">Powered by <a style="color:#aaaaaa" href="http://www.codemight.com" target="_blank">Video CMS</a><br /><br /></p></body>'},
]
end
