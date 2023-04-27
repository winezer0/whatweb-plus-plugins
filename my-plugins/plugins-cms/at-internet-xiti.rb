Plugin.define do
name "at-internet-xiti"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'AT Internet XiTi'},
{:search=>'body', :regexp=>/xiti\.com.hit\.xiti/},
]
end