Plugin.define do
name "getsimple-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'GetSimple CMS'},
{:search=>'body', :regexp=>/GetSimple/},
]
end