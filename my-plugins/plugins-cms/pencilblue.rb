Plugin.define do
name "pencilblue"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'PencilBlue'},
{:search=>'headers[x-powered-by]', :regexp=>/PencilBlue/},
]
end