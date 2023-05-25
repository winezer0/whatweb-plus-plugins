Plugin.define do
name "sencha-touch"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/sencha-touch.*\.js/, :search=>'body'},
{:search=>"all", :text=>'Sencha Touch'},
]
end