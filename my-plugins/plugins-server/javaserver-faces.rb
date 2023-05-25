Plugin.define do
name "javaserver-faces"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'headers[x-powered-by]', :regexp=>/JSF(?:.([\d.]+))?/},
{:search=>"all", :text=>'JavaServer Faces'},
]
end