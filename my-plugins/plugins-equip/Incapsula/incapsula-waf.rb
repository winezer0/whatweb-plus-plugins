Plugin.define do
name "Incapsula-WAF"
authors [
"Aung Khant <http://yehg.net/>",
"Bhavin Senjaliya",
"Andrew Horton",
]
version "0.4"
description "Incapsula-WAF"
website "http://www.incapsula.com"
matches [
{:name=>"visid_incap_ cookie", :search=>"headers[set-cookie]", :regexp=>/^visid_incap_/},
{:name=>'Set-cookie Header', :search=>"headers[set-cookie]", :regexp=>/incap_ses_/i},
{:name=>'Set-cookie Header', :search=>"headers[set-cookie]", :regexp=>/incap_visid_83_/i},
{:search=>'headers', :text=>'X-Iinfo'},
{:search=>'headers', :text=>'incap_ses_'},
{:search=>'headers', :text=>'incap_visid_83_'},
{:search=>'headers', :text=>'visid_incap'},
{:text=>'Incapsula incident ID'},
]
end