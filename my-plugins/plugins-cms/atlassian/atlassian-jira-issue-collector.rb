Plugin.define do
name "atlassian-jira-issue-collector"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Atlassian Jira Issue Collector'},
{:search=>'body', :regexp=>/atlassian\.jira\.collector\.plugin/},
{:search=>'body', :regexp=>/jira-issue-collector-plugin/},
]
end