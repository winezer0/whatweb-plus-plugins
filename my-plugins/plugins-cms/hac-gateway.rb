Plugin.define do
name "hac-gateway"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'hac_gateway'},
{:url=>'/login.php', :text=>'HACClientSignByKey'},
]
end