Plugin.define do
name "WSN-Knowledge-Base"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WSN Knowledge Base is an article directory script. It can autopost whole feeds of prepared content, be employed as a CMS, or be used as a simple knowledge base. The rich text editor allows easy composition. WSN KB offers a vast array of features and the option to translate to any language."
website "http://www.wsnkb.com/"
matches [
{:certainty=>25, :regexp=>/<div class="boxtitle" on[c|C]lick="minmax\('[a-z]+box'\)"><img src=/},
{:certainty=>25, :text=>'<!-- place any jquery-dependent script tags that need to be before the /head tag in here -->'},
{:text=>'<textarea readonly rows="20" cols="75">WSN Knowledge Base License Agreement'},
{:text=>'<title>WSN Knowledge Base Admin Login</title>'},
{:text=>'<title>WSN Knowledge Base Administration Panel</title>'},
{:version=>/<span class="(topbar|group)" style="margin-left: 8px;">WSN Knowledge Base ([^<]+) Admin Login<\/span>/, :offset=>1},
{:version=>/<span class="(topbar|group)">WSN Knowledge Base ([^<]+) Admin Panel<\/span>/, :offset=>1},
]
end
