Plugin.define do
name "南方数据-southidc"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Southidc'},
{:text=>'/SouthidcKeFu.js'},
{:text=>'/Southidcj2f.Js'},
{:text=>'CONTENT="Copyright 2003-2015 - Southidc.net'},
]
end