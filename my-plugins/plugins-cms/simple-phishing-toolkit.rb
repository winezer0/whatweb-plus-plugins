Plugin.define do
name "Simple-Phishing-Toolkit"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Simple Phishing Toolkit (SPT)"
website "http://www.sptoolkit.com/project/"
dorks [
'intitle:"spt - simple phishing toolkit" "forgot password"'
]
matches [
{:certainty=>75, :text=>'<title>spt - simple phishing toolkit</title>'},
{:text=>'<div id="browser_warning">You are running a web browser that has not been tested...Try the latest version of <a href="http://google.com/chrome">Google Chrome</a>, <a href="http://microsoft.com/ie">Microsoft Internet Explorer</a> or <a href="http://mozilla.org/firefox">Mozilla Firefox</a></div>'},
{:text=>'<meta name="description" content="welcome to spt - simple phishing toolkit.  spt is a super simple but powerful phishing toolkit." />'},
{:version=>/<span id="spt"><a href="http:\/\/www\.sptoolkit\.com\/download\/" target="_blank">v([^\s^<]+)/},
]
end
