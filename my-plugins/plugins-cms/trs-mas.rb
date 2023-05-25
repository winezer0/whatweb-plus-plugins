Plugin.define do
name "trs-mas"
authors [
"winezero",
]
version "0.2"
matches [
{:search=>"body", :text=>'TRS MAS'},
{:search=>"body", :text=>'TRS-MAS'},
{:search=>"headers", :text=>'X-Mas-Server'},
]
end