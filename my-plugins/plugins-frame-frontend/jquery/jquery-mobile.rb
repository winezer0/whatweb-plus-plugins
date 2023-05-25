Plugin.define do
name "jquery-mobile"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/jquery[.-]mobile(?:-([\d.]))?(?:\.min)?\.js(?:\?ver=([\d.]+))?/, :search=>'body'},
{:search=>"all", :text=>'jQuery Mobile'},
]
end