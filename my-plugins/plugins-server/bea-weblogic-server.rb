Plugin.define do
name "bea-weblogic-server"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers[server]", :version=>/^WebLogic Server (.+) [A-Z][a-z]{2} [A-Z][a-z]{2} [\d]{1,2} [\d]{2}:[\d]{2}:[\d]{2}/},
{:search=>"headers[server]", :version=>/^WebLogic WebLogic (Temporary .+) [\d]{2}\/[\d]{2}\/[\d]{4}/},
{:search=>"headers[server]", :version=>/^WebLogic( WebLogic)?( Server)? (.+)  [\d]{2}\/[\d]{2}\/[\d]{4}/, :offset=>2},
{:text=>'<META NAME=\"GENERATOR\" CONTENT=\"WebLogic Server\">'},
{:text=>'<TITLE>Default BEA WebLogic Server Web Server Index Page</TITLE>'},
{:text=>'<title>Default BEA WebLogic Server Web Server Index Page</title>'},
{:version=>/<h1>BEA WebLogic Server ([^\s]+)&#153;<\/h1>/},
]
end