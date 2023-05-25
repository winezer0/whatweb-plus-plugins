Plugin.define do
name "moment-timezone"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/moment-timezone(?:-data)?(?:\.min)?\.js/, :search=>'body'},
{:search=>"all", :text=>'Moment Timezone'},
]
end