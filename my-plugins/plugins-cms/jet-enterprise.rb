Plugin.define do
name "jet-enterprise"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/jet-enterprise/, :search=>'headers[powered]'},
{:search=>"all", :text=>'JET Enterprise'},
]
end