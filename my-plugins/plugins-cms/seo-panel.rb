Plugin.define do
name "Seo-Panel"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A complete open source seo control panel for managing search engine optimization of your websites. Seo Panel is a seo tool kit includes latest hot seo tools to increase and track the performace of your websites."
website "http://www.seopanel.in/"
dorks [
'intitle:"Seo Panel: Login section"'
]
matches [
{:certainty=>75, :text=>'<meta name="description" content="Login to Seo Panel and utilise seo tools and plugins to increase the perfomance of your site." />'},
{:certainty=>75, :text=>'<p class="note error">JavaScript is turned off in your web browser. Turn it on to take full advantage of this site, then refresh the page.</p>'},
{:text=>"<p class='note error'><p style='color:red'>You don't have permission to access this page!</p></p>"},
{:text=>"<title>Seo Panel: Login section</title>"},
{:text=>"var wantproceed = 'Do you really want to proceed?';"},
{:text=>"var wantproceed = 'Wollen Sie wirklich fortfahren?';"},
]
end
