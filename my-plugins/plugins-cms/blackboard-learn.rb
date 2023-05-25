Plugin.define do
name "blackboard-learn"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'X-Blackboard-Appserver'},
{:search=>"headers", :text=>'X-Blackboard-Product'},
]
end