Plugin.define do
name "neos-flow"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Neos Flow'},
{:search=>'headers[x-flow-powered]',:offset=>1, :regexp=>/Flow.?(.+)?$/},
]
end