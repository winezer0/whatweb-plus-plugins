Plugin.define do
name "ASProxy"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ASProxy is a free and open-source web proxy which allows the user to surf the net anonymously."
website "http://asproxy.sourceforge.net/"
dorks [
'"Surf the web with ASProxy" inurl:(surf|noscript)'
]
matches [
{:text=>'<!-- Surf the web invisibly using ASProxy power. A Powerfull web proxy is in your hands. -->'},
{:text=>'<!--This is ASProxy powered by SalarSoft. -->'},
{:text=>'<input type="button" onclick="_Page_SubmitForm()" value="Display" id="btnASProxyDisplayButton" class="Button" />'},
{:text=>'Surf the web invisibly using ASProxy power'},
{:text=>'btnASProxyDisplayButton'},
{:version=>/asproxydone="2"(\ style="font-weight:[\s]*bold;[\s]*text-decoration:[\s]*none")?>ASProxy ([^\s^<]+)<\/a>/, :offset=>1},
]
end
