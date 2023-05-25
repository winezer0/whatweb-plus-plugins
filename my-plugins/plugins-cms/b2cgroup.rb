Plugin.define do
name "b2cgroup"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'b2cGroup'},
{:url=>'/lib/js/common.js', :text=>'function shooseTbody(obj)'},
]
end