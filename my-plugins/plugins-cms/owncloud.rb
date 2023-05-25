Plugin.define do
name "owncloud" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<a href="https:..owncloud\.com" target="_blank">ownCloud Inc\.<.a><br.>Your Cloud, Your Data, Your Way!/},
{:search=>"all", :text=>'ownCloud'},
{:search=>'body', :regexp=>/app-id=543672169/},
{:url=>"/favicon.ico",:allhash=>"a4eb4e0aa80740db8d7d951b6d63b2a2"},
]
end