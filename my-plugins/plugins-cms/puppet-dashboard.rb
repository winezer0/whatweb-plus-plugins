Plugin.define do
name "Puppet-Dashboard"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Puppet Dashboard is a web interface and reporting tool for a Puppet installation."
website "http://projects.puppetlabs.com/projects/dashboard"
dorks [
'intitle:"Puppet Node Manager" "Puppet Labs"'
]
matches [
{:certainty=>75, :text=>'<title>Puppet Node Manager</title>'},
{:string=>/<p><a href="http:\/\/puppetlabs\.com\/">&copy; Copyright (20[\d]{2}) Puppet Labs<\/a><\/p>/},
{:text=>"<a href='/' style=\"background-repeat: no-repeat; text-indent: -9000px; background-image: url('/images/dashboard_logo.png'); height: 23px; width: 155px\" title='Puppet Dashboard'>Puppet Dashboard</a>"},
{:url=>"/images/favicon.ico", :md5=>"ba4bfe5d1deb2b4410e9eb97c5b74c9b"},
{:version=>/<li class='' id='dashboard-version'>[\s]+<a href="https:\/\/github\.com\/puppetlabs\/puppet-dashboard\/blob\/([^\s]+)\/CHANGELOG">/},
]
end
