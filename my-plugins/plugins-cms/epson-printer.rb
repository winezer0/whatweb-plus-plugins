Plugin.define do
name "epson-printer"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Epson printer"
website "http://www.epson.com/"
dorks [
'intitle:"EpsonNet (Config|WebAssist) Rev"'
]
matches [
{:module=>/<TITLE>EpsonNet (WebAssist |Config )Rev\.([^<]+)<\/TITLE>/},
{:search=>"headers", :text=>'EPSON-HTTP'},
{:text=>'EpsonNet WebAssist'},
{:text=>'EpsonNet config'},
{:version=>/^EPSON-HTTP\/([^\s]+)/, :search=>"headers[server]"},
]
end
