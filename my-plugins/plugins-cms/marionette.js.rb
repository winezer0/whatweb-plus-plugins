Plugin.define do
name "marionette.js"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Marionette.js'},
{:search=>'body', :regexp=>/backbone\.marionette.*\.js/},
]
end