Plugin.define do
name "salesforce"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<[^>]+="brandQuaternaryFgrs/},
{:search=>"all", :text=>'Salesforce'},
]
end