Plugin.define do
name "danneo-cms"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/Danneo CMS ([\d.]+)/},
{:regexp=>/CMS Danneo ([\d.]+)/,:offset=>1, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'Danneo CMS'},
]
end