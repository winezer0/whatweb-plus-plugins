Plugin.define do
name "doubleclick-campaign-manager-dcm"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/2mdn\.net/, :search=>'body'},
{:search=>"all", :text=>'DoubleClick Campaign Manager (DCM)'},
]
end