Plugin.define do
name "fat-free-framework"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Fat-Free Framework'},
{:search=>'headers[x-powered-by]', :regexp=>/^Fat-Free Framework$/},
]
end