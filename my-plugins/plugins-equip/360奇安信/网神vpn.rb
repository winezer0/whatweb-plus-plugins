Plugin.define do
name "网神vpn" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'host_for_cookie'},
{:text=>'admin/js/virtual_keyboard.js'},
]
end