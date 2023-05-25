Plugin.define do
name "actitor"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/cdn\.actito\.be/, :search=>'body'},
{:search=>'body', :regexp=>/\.advisor\.smartfocus\.com/},
]
end