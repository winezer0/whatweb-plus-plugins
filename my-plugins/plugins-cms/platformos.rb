Plugin.define do
name "platformos"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'PlatformOS'},
{:search=>'headers[x-powered-by]', :regexp=>/^platformOS$/},
]
end