Plugin.define do
name "nginx-admin"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'nginx admin'},
]
end