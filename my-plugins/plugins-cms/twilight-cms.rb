Plugin.define do
name "twilight-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Twilight CMS'},
{:search=>'headers[x-powered-cms]', :regexp=>/Twilight CMS/},
]
end