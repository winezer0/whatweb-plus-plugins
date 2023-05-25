Plugin.define do
name "saber"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/^Saber v([\d.]+)$/},
{:regexp=>/<div [^>]*id="_saber/},
]
end