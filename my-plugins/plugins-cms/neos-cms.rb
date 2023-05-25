Plugin.define do
name "neos-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers[x-flow-powered]', :regexp=>/Neos.?(.+)?$/,:offset=>1  },
]
end