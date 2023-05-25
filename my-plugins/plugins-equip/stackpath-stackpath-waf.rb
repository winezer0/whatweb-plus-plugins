Plugin.define do
name "stackpath-stackpath-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'You performed an action that triggered the service and blocked your request'},
]
end