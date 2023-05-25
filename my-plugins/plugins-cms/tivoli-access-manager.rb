Plugin.define do
name "tivoli-access-manager"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Tivoli Access Manager for e-business software is a highly scalable user authentication, authorization and Web SSO solution for enforcing security policies over a wide range of Web and application resources. It centralizes user access management for online portal and business initiatives."
website "http://www.ibm.com/software/tivoli/products/access-mgr-e-bus/"
dorks [
'intitle:"Access Manager for e-business Login"'
]
matches [
{:text=>'<!-- Copyright (C) 2000 Tivoli Systems, Inc. -->'},
{:text=>'<!--- DO NOT TRANSLATE OR MODIFY any part of the hidden parameter(s) --->'},
{:text=>'<TITLE>Access Manager for e-business Login</TITLE>'},
{:text=>'var warningString = "<B>WARNING:</B> To maintain your login session, make sure that your browser is configured to accept Cookies.";'},
]
passive do
m=[]
m << { :name=>'HTTP WWW Authenticate header' } if @headers['www-authenticate'] =~ /realm="Access Manager for e-business"/
m
end
end
