Plugin.define do
name "masterking32-framework"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/^MasterkinG(?:)/, :search=>'body'},
{:search=>'headers[x-powered-framework]', :regexp=>/MasterkinG(?:)/},
]
end