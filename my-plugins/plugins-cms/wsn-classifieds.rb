Plugin.define do
name "WSN-Classifieds"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WSN Classifieds gives you a powerful classified ads site. The vast array of features make it easy to make money from sponsored listings. Translate to any language and easily customize fields and functionality."
website "http://www.wsnclassifieds.com/"
matches [
{:certainty=>25, :regexp=>/<div class="boxtitle" on[c|C]lick="minmax\('[a-z]+box'\)"><img src=/},
{:certainty=>25, :text=>'<!-- place any jquery-dependent script tags that need to be before the /head tag in here -->'},
{:text=>'<textarea readonly rows="20" cols="75">WSN Classifieds License Agreement'},
{:text=>'<title>WSN Classifieds Admin Login</title>'},
{:text=>'<title>WSN Classifieds Administration Panel</title>'},
{:version=>/<span class="(topbar|group)" style="margin-left: 8px;">WSN Classifieds ([\d\.]+) Admin Login<\/span>/, :offset=>1},
{:version=>/<span class="(topbar|group)">WSN Classifieds ([\d\.]+) Admin Panel<\/span>/, :offset=>1},
]
end
