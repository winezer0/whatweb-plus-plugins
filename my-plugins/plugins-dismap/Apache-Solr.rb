Plugin.define do
name "Apache-Solr"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/SolrCore Initialization Failures|ng-app="solrAdminApp/},
{:url=>"/favicon.ico",:allhash=>"69acfcb2659952bc37c54108d52fca70"},
{:url=>"/favicon.ico",:allhash=>"ffc05799dee87a4f8901c458f7291d73"},
]
end