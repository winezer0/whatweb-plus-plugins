Plugin.define do
name "Tencent-QQ"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tencent QQ, generally referred to as QQ, is the most popular free instant messaging computer program in Mainland China. As of September 30, 2010, the active QQ users accounts for QQ IM amounted to 636.6 million, possibly making it the world's largest online community. The number of simultaneous online QQ accounts exceeded 100 million."
website "http://www.qq.com/"
matches [
{:search=>"headers[server]", :regexp=>/^HTTP_ME\/\d\.\d Tencent\/HTTP_Magic_Expression$/},
]
end
