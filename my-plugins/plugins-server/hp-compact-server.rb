Plugin.define do
name "hp-compact-server"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'HP Compact Server'},
{:search=>'headers[server]', :regexp=>/HP_Compact_Server(?:.([\d.]+))?/,:offset=>1},
]
end