Plugin.define do
name "crazy-egg"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Crazy Egg'},
{:search=>'body', :regexp=>/script\.crazyegg\.com.pages.scripts.\d+.\d+\.js/},
]
end