Plugin.define do
name "hp-chaiserver"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'HP ChaiServer'},
{:search=>'headers[server]',:offset=>1, :regexp=>/HP-Chai(?:Server|SOE)(?:.([\d.]+))?/},
]
end