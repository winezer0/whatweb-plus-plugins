Plugin.define do
name "Harbor"
authors [
"winezero",

]
version "0.1"
matches [
{:serach=>'headers', :text=>'harbor-lang'},
{:text=>'<title>Harbor</title>'},
]
end