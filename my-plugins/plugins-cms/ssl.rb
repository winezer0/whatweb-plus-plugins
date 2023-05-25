Plugin.define do
name "ssl"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.2"
description "This plugin retrieves details from SSL certificate files."
passive do
m=[]
if @body =~ /^-----BEGIN CERTIFICATE-----/ and @body =~ /^-----END CERTIFICATE-----/ and @body =~ /Public Key Algorithm:/ and @body =~ /Signature Algorithm:/ and @body =~ /Issuer:/
m << { :name=>"SSL Cert Text" }
m << { :string=>@body.scan(/Issuer:[\s]*([^\r^\n]+)/)[0].to_s+" ("+@body.scan(/RSA Public Key:[\s]*\(([^\)]+)\)/).flatten.first+") ("+@body.scan(/^[\s]+Not After : ([^\r^\n]+)/).flatten.first+")" } if @body =~ /Issuer:[\s]*([^\r^\n]+)/ and @body =~ /RSA Public Key:[\s]*\(([^\)]+)\)/ and @body =~ /^[\s]+Not After : ([^\r^\n]+)/
end
m << { :string=>"x-x509-ca-cert" } if @headers["Content-Type"] =~ /^[\s]*application\/x-x509-ca-cert/
m
end
matches [
{:name=>"css comment", :text=>'/* avoid stupid IE6 bug with frames and scrollbars */'},
{:name=>"default title", :text=>"<title>SquirrelMail - Login</title>"},
{:name=>"js function", :text=>"function squirrelmail_loginpage_onload()"},
{:regexp=>/<small>SquirrelMail version ([.\d]+)[^<]*<br/,:offset=>1},
{:search=>"headers", :text=>'SQMSESSID'},
{:text=>'<b>SquirrelMail Login</b>'},
{:version=>/<(small|SMALL)>SquirrelMail version ([^<]+)</, :offset=>1,  :name=>"version"},
]
end