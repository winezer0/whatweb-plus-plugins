Plugin.define do
name "analysys-ark"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/AnalysysFangzhou_JS_SDK\.min\.js\?v=([\d.]+)/},
{:search=>"all", :text=>'Analysys Ark'},
]
end