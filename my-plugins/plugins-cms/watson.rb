Plugin.define do
name "watson"
authors [
"Andrew Horton",

]
version "0.1"
description "Home Router. Default username/password is admin/admin"
website "http://www.schmid-telecom.com/"
matches [
{:text=>"<!--- Page(page_login)=[Login] ---><HTML>"},
{:text=>"<TITLE>Watson Management Console</TITLE>"},
]
end
