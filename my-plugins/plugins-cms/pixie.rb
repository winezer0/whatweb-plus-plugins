Plugin.define do
name "Pixie"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "pixie is a free, open source web application that will help you quickly create your own website"
website "http://www.getpixie.co.uk/"
matches [
{:regexp=>/href="http:\/\/www.getpixie.co.uk" title="Get Pixie">(Pixie Powered|Powered by Pixie|Pixie)<\/a>/},
{:version=>/<meta name="generator" content="Pixie ([\d\.]+) - Copyright \(C\) [\d]{4} - [\d]{4}\." \/>/},
]
end
