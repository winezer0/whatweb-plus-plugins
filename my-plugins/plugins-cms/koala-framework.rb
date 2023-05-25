Plugin.define do
name "koala-framework"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<!--[^>]+This website is powered by Koala Web Framework CMS/},
{:regexp=>/^Koala Web Framework CMS/, :search=>'body'},
{:search=>"all", :text=>'Koala Framework'},
]
end