Plugin.define do
name "oracle-commerce-cloud"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<[^>]+id="oracle-cc/},
{:search=>"all", :text=>'Oracle Commerce Cloud'},
]
end