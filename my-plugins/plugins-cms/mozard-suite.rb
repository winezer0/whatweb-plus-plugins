Plugin.define do
name "mozard-suite"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/Mozard/, :search=>'body'},
{:search=>"all", :text=>'Mozard Suite'},
]
end