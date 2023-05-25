Plugin.define do
name "yahoo!-tag-manager"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<!-- (?:End )?Yahoo! Tag Manager -->/},
{:regexp=>/b\.yjtag\.jp.iframe/, :search=>'body'},
{:search=>"all", :text=>'Yahoo! Tag Manager'},
]
end