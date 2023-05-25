Plugin.define do
name "javaserver-pages"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'headers[x-powered-by]', :regexp=>/JSP(?:.([\d.]+))?/},
{:search=>"all", :text=>'JavaServer Pages'},
]
end