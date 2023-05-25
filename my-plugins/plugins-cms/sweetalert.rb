Plugin.define do
name "sweetalert"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<link[^>]+?href="[^"]+sweet-alert(?:\.min)?\.css/},
{:regexp=>/sweet(?:-)?alert(?:\.min)?\.js/, :search=>'body'},
{:search=>"all", :text=>'SweetAlert'},
]
end