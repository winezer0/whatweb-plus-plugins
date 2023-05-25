Plugin.define do
name "tilgin-router"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Tilgin router"
website "http://www.tilgin.com/Products/"
dorks [
'"Welcome to the Tilgin router" "Status summary" intitle:VOOD -www.killmail.org'
]
matches [
{:text=>'<A href="/status/" class="menuitem" title="Status">Status</A><SPAN class="separator"> </SPAN><A href="/help/" class="last menuitem" title="Help">Help</A>'},
{:text=>'<A href="/wizard/" class="" title="Wizard">Run wizard</A> for a quick and simple initial configuration.'},
{:text=>'<H1 id="title">Welcome to the Tilgin router</H1>'},
{:text=>'<LINK rel="stylesheet" type="text/css" href="/compressed-control.css">'},
{:text=>'<TITLE>VOOD</TITLE>', :url=>"/"},
]
passive do
m=[]
if @body =~ /<TABLE class="control">[\s]+<TBODY>[\s]+<TR>[\s]+<TD class="first">Product name:<\/TD>/
if @body =~ /<TABLE class="control">[\s]+<TBODY>[\s]+<TR>[\s]+<TD class="first">Product name:<\/TD>[\s]+<TD class="last">([^\s]+)<\/TD>[\s]+<\/TR>[\s]+<TR>[\s]+<TD class="first">/
m << { :model=>"#{$1}" }
end
if @body =~ /<TR>[\s]+<TD class="first">Software revision:<\/TD>[\s]+<TD class="last">([^\s]+)<\/TD>[\s]+<\/TR>[\s]+<TR>[\s]+<TD class="first">Connection:<\/TD>/
m << { :firmware=>"#{$1}" }
end
end
m
end
end