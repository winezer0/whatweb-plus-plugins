Plugin.define do
name "github-pages"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'GitHub Pages'},
{:search=>'headers[server]', :regexp=>/^GitHub\.com$/},
]
end