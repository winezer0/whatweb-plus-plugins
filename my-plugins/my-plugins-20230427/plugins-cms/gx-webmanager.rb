Plugin.define do
name "gx-webmanager"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<!--\s+Powered by GX/},
{:regexp=>/GX WebManager(?: ([\d.]+))?/, :search=>'body',:offset=>1},
{:search=>"all", :text=>'GX WebManager'},
]
end