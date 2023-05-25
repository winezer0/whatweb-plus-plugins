Plugin.define do
name "mobotix-camera"
authors [
"winezero",
]
version "0.1"
matches [
{:mmh3=>'661332347'},
{:search=>"headers", :text=>'MOBOTIX Camera'},
]
end