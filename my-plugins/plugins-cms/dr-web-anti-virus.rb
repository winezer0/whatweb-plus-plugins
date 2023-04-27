Plugin.define do
name "Dr-Web-Anti-Virus"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Dr.Web anti-virus"
website "http://www.drweb.com/"
dorks [
'"Doctor Web" intitle:"Authorization" "Russian anti-virus vendor"'
]
matches [
{:filepath=>/var _globalVars = \{\s+'mailSystem': '\d*',\s+'sessionTmout': '\d*',\s+'rootDir': '[^']+',\s+'https': '\d',\s+'currentPage': '([^']+)',/},
{:md5=>"2ef77c5015f2a5aee1633d58a32037ef", :url=>"/avdesk/includes/system/templates/images/logo_ru.png"},
{:md5=>"b3465a1bb7fa5ca9e63d2924f4f7a865", :url=>"/avdesk/includes/system/templates/images/logo_en.png"},
{:search=>"headers", :text=>'DRWEB_PERSONAL_OFFICE='},
{:search=>"headers[set-cookie]", :regexp=>/DRWEB_PERSONAL_OFFICE=[^;]*;/},
{:text=>'/avdesk/includes/system/templates/images/logo_en.png'},
{:text=>'<div id="logo" class="logo"><img src="/avdesk/includes/system/templates/images/logo_en.png" alt="" /></div>'},
]
end
