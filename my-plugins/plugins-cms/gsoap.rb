Plugin.define do
name "gSOAP"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "gSOAP Toolkit for SOAP Web Services and XML-Based Applications. The gSOAP toolkit is an open source C and C++ software development toolkit for SOAP/XML Web services and generic (non-SOAP) C/C++ XML data bindings. The toolkit analyzes WSDLs and XML schemas (separately or as a combined set) and maps the XML schema types and the SOAP messaging protocols to easy-to-use and efficient C and C++ code."
website "http://gsoap2.sourceforge.net/"
matches [
{:regexp=>/^gSOAP/, :search=>"headers[server]"},
{:search=>"headers", :text=>'gSOAP'},
{:url=>"/favicon.ico",:allhash=>"63d5627fc659adfdd5b902ecafe9100f"},
{:version=>/^gSOAP\/([^\s]+)$/, :search=>"headers[server]"},
]
end
