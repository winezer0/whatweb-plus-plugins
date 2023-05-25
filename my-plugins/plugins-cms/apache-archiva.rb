Plugin.define do
name "Apache-Archiva"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Apache Archiva is an extensible repository management software that helps taking care of your own personal or enterprise-wide build artifact repository. It is the perfect companion for build tools such as Maven, Continuum, and ANT."
website "http://archiva.apache.org/"
dorks [
'intitle:"Apache Archiva" ext:action "Copyright"'
]
matches [
{:certainty=>25, :text=>'<title>Apache Archiva '},
{:text=>'/archiva.css'},
{:text=>'/archiva.js'},
{:text=>'<form namespace="/" id="quickSearch" name="quickSearch" onsubmit="customOnsubmit_quickSearch(); return validateForm_quickSearch();" action="'},
{:text=>'<form namespace="/" id="quickSearch" name="quickSearch" onsubmit="return validateForm_quickSearch();" action="'},
{:text=>'Apache Archiva'},
{:text=>'No context on this server matched or handled this request.<BR>Contexts known to this server are: <ul><li><a href="/archiva">/archiva&nbsp;--->&nbsp;org.mortbay.jetty.webapp.WebAppContext'},
{:version=>/<div class="xleft">\s+<a target="_blank" href="http:\/\/archiva\.apache\.org\/">Apache Archiva ([\d\.]+)<\/a>\s+<\/div>\s+<div class="xright">/},
{:version=>/<div class="xleft">\s+Apache Archiva ([\d\.]+)\s+<\/div>\s+<div class="xright">/},
]
end
