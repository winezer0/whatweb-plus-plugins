Plugin.define do
name "konica-minolta-printer"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Konica Minolta Printer"
website "http://konicaminolta.com/"
matches [
{:certainty=>25, :search=>"headers[server]", :version=>/^LPC Http Server\/V([^\s]+)/},
{:model=>/<head><meta http-equiv=content-type content=text\/html; charset=[^\s^>]+><TITLE>KONICA MINOLTA .+ ([^<^\s]+)<\/TITLE>/},
{:text=>'<meta http-equiv="refresh" content="0; URL=/wcd/js_error.xml">'},
{:url=>"/wcd/js_error.xml", :text=>'<?xml-stylesheet href="js_error.xsl" type="text/xsl"?>'},
]
end
