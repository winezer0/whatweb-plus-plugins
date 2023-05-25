Plugin.define do
name "fast-search-for-sharepoint"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<input[^>]+ name="ParametricSearch/},
{:search=>"all", :text=>'FAST Search for SharePoint'},
]
end