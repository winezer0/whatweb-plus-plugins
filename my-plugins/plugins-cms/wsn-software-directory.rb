Plugin.define do
name "WSN-Software-Directory"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WSN Software Directory is a full-featured software respository script. Run your own download.com or hotscripts type of website. Take full advantage of the PAD file format for easy maintenance. Translate to any language and easily customize fields and functionality."
website "http://www.wsnsoftwaredirectory.com/"
matches [
{:certainty=>25, :regexp=>/<div class="boxtitle" on[c|C]lick="minmax\('[a-z]+box'\)"><img src=/},
{:certainty=>25, :text=>'<!-- place any jquery-dependent script tags that need to be before the /head tag in here -->'},
{:text=>'<textarea readonly rows="20" cols="75">WSN Software Directory License Agreement'},
{:text=>'<title>WSN Software Directory Admin Login</title>'},
{:text=>'<title>WSN Software Directory Administration Panel</title>'},
{:version=>/<span class="(topbar|group)" style="margin-left: 8px;">WSN Software Directory ([\d\.]+) Admin Login<\/span>/, :offset=>1},
{:version=>/<span class="(topbar|group)">WSN Software Directory ([\d\.]+) Admin Panel<\/span>/, :offset=>1},
]
end
