Plugin.define do
name "simplébo"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Simplébo'},
{:search=>'headers[x-servedby]', :regexp=>/simplebo/},
]
end