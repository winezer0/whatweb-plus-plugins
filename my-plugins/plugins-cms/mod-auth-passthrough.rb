Plugin.define do
name "mod-auth-passthrough"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'mod_auth_passthrough'},
]
end