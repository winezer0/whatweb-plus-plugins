Plugin.define do
name "WSN-Directory"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WSN Directory is a powerful, translatable business directory script. Show google maps of business locations or search businesses by distance from your location. Make money with sponsored listings."
website "http://www.wsndirectory.com/"
matches [
{:certainty=>25, :regexp=>/<div class="boxtitle" on[c|C]lick="minmax\('[a-z]+box'\)"><img src=/},
{:certainty=>25, :text=>'<!-- place any jquery-dependent script tags that need to be before the /head tag in here -->'},
{:text=>'<textarea readonly rows="20" cols="75">WSN Directory License Agreement'},
{:text=>'<title>WSN Directory Admin Login</title>'},
{:text=>'<title>WSN Directory Administration Panel</title>'},
{:version=>/<span class="(group|topbar)" style="margin-left: 8px;">WSN Directory ([\d\.]+) Admin Login<\/span>/, :offset=>1},
{:version=>/<span class="(group|topbar)">WSN Directory ([\d\.]+) Admin Panel<\/span>/, :offset=>1},
]
end
