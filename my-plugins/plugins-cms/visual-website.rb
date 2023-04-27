Plugin.define do
name "visual-website"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<!-- (?:Start|End) Visual Website Optimizer A?Synchronous Code -->/},
{:regexp=>/dev\.visualwebsiteoptimizer\.com/, :search=>'body'},
{:search=>"all", :text=>'Visual Website Optimizer'},
]
end