Plugin.define do
name "Plone-CMS"
authors [
"winezero",
]
version "0.1"
matches [
{:name=>"URL Pattern", :certainty=>75, :ghdb=>'inurl:"acl_users/credentials_cookie_auth/require_login?came_from"'},
{:name=>"X-Cache-Rule: plone-content-types", :search=>"headers[x-cache-rule]", :regexp=>/plone-content-types/i},
{:name=>"X-Caching-Rule-Id: plone-content-types", :search=>"headers[x-caching-rule-id]", :regexp=>/plone-content-types/i},
{:name=>"div tag, visual-portal-wrapper",
:certainty=>75,
:text=>'<div id="visual-portal-wrapper">'},
{:name=>"meta generator tag",
:regexp=>/<meta name="generator" content="[^>]*http:\/\/plone.org" \/>/},
{:name=>"plone css",
:regexp=>/(@import url|text\/css)[^>]*portal_css\/.*plone.*css(\)|")/},
{:name=>"plone javascript",
:regexp=>/src="[^"]*ploneScripts[0-9]+.js"/},
{:text=>'<div class="visualIcon contenttype-plone-site">'},
{:text=>'<meta name="generator" content="Plone - http://plone.com">'},
{:url=>"/favicon.ico",:allhash=>"10bd6ad7b318df92d9e9bd03104d9b80"},
{:url=>"/favicon.ico",:allhash=>"4eb846f1286ab4e7a399c851d7d84cca"},
{:url=>"/favicon.ico",:allhash=>"a47951fb41640e7a2f5862c296e6f218"},
{:version=>/<li>Plone (.+) \(.*\)<\/li>/},
]
end