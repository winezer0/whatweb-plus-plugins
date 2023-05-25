Plugin.define do
name "intershop"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/(?:is-bin|INTERSHOP)/, :search=>'body'},
{:regexp=>/<ish-root/},
{:search=>"all", :text=>'Intershop'},
]
end