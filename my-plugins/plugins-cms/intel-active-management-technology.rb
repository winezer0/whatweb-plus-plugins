Plugin.define do
name "intel-active-management-technology"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Intel Active Management Technology'},
{:search=>'headers[server]',:offset=>1, :regexp=>/Intel\(R\) Active Management Technology(?: ([\d.]+))?/},
]
end