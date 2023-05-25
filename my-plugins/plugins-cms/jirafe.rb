Plugin.define do
name "jirafe"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'atlassian.xsrf.token'},
{:search=>'body', :regexp=>/.jirafe\.js/},
{:text=>'ams-build-number'},
{:text=>'com.atlassian.plugins'},
{:text=>'jira.webresources'},
]
end