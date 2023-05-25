Plugin.define do
name "wordpress-vip"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/^WordPress\.com VIP/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'WordPress VIP'},
]
end