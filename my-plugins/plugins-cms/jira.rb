Plugin.define do
name "jira"
authors [
"winezero",
]
version "0.1"
matches [
{:mmh3=>'855273746'},
{:regexp=>/href="\/secure\/AboutPage.jspa">About JIRA<\/a>|<meta name="stp-license-product-name" content="JIRA"\/>/},
{:search=>"headers", :text=>'atlassian.xsrf.token'},
{:text=>'ams-build-number'},
{:text=>'com.atlassian.plugins'},
{:text=>'jira.webresources'},
{:url=>"/favicon.ico",:allhash=>"88717398db158e3330ce94fc1784e4a7"},
]
end