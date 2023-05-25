Plugin.define do
name "AContent"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AContent  is an open source learning content authoring system and respository used to create interoperable, accessible, adaptive Web-based learning content."
website "http://www.atutor.ca/acontent/"
dorks [
'intitle:"AContent: Learning Content Repository:"'
]
matches [
{:md5=>"28c34462a074c5311492759435549468", :url=>"/favicon.ico"},
{:text=>'<dt><span class="required" title="Required Field">*</span><label for="login">Login Name or Email</label></dt>'},
{:text=>'<title>AContent: Learning Content Repository:'},
{:url=>"/favicon.ico",:allhash=>"28c34462a074c5311492759435549468"},
]
end
