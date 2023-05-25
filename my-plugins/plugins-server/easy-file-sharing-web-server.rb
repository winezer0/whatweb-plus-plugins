Plugin.define do
name "easy-file-sharing-web-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Easy File Sharing Web Server is a file sharing software that allows visitors to upload/download files easily through a Web Browser"
website "http://www.sharing-file.com/"
matches [
{:search=>"all", :text=>'easy file sharing web server'},
{:search=>"headers", :text=>'Easy File Sharing Web Server'},
{:version=>/^Easy File Sharing Web Server v(.+)$/, :search=>"headers[server]"},
]
end
