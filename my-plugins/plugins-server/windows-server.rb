Plugin.define do
name "windows-server"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Windows Server'},
{:search=>'headers[server]', :regexp=>/Win32|Win64/},
]
end