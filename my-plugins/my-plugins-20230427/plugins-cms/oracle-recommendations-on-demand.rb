Plugin.define do
name "oracle-recommendations-on-demand"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/atgsvcs.+atgsvcs\.js/, :search=>'body'},
{:search=>"all", :text=>'Oracle Recommendations On Demand'},
]
end