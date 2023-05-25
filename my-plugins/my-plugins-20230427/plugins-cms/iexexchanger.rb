Plugin.define do
name "iexexchanger"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/iEXExchanger/, :search=>'body'},
{:search=>"all", :text=>'iEXExchanger'},
]
end