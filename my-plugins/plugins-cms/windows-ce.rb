Plugin.define do
name "windows-ce"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Windows CE'},
{:search=>'headers[server]', :regexp=>/\bWinCE\b/},
]
end