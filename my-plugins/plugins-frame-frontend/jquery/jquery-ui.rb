Plugin.define do
name "jquery-ui"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/jquery-ui[.-]([\d.]*\d)[^.]*\.js/},
{:regexp=>/([\d.]+).jquery-ui(?:\.min)?\.js/, :search=>'body',:offset=>1},
{:regexp=>/jquery-ui.*\.js/, :search=>'body'},
{:search=>"all", :text=>'jquery ui'},
{:text=>'jquery-ui'},
]
end