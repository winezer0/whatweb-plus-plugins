Plugin.define do
name "Ionize-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Ionize is a powerful & friendly Content Management System"
website "http://www.ionizecms.com/"
dorks [
'"view : default/article" inurl:404'
]
matches [
{:regexp=>/<!--[\s]+Displays the Google code defined in Ionize's Advanced settings panel[\s]+-->/},
{:status=>404, :text=>'<p class="article-date">07.09.2010</p>'},
{:status=>404, :text=>'<p class="note">view : <b>default/article</b></p>'},
{:text=>'<div id="content" class="content" onKeyPress="javascript:doSubmit(event);">'},
{:text=>'<div id="loginWindow" class=" clearfix">'},
{:text=>'<meta name="description" content="HandMade, an Ionize theme" />'},
{:version=>/<div id="version">([\d\.]+) - Ionize CMS - MIT licence<\/div>/},
]
passive do
m=[]
m << { :name=>"ionize_session Cookie" } if @headers["set-cookie"] =~ /ionize_session=/
m
end
end