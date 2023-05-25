Plugin.define do
name "mod-security"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Mod_Security'},
]
end