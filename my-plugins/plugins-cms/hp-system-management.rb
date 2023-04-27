Plugin.define do
name "hp-system-management"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'HP System Management'},
{:search=>'headers[server]', :regexp=>/HP System Management/},
]
end