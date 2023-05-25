Plugin.define do
name "dm-polopoly"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<(?:link [^>]*href|img [^>]*src)=".polopoly_fs./},
{:search=>"all", :text=>'DM Polopoly'},
]
end