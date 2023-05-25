Plugin.define do
name "visual-webgui"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/^Visual WebGUI/, :search=>'body'},
{:search=>"all", :text=>'Visual WebGUI'},
{:search=>'body', :regexp=>/\.js\.wgx$/},
]
end