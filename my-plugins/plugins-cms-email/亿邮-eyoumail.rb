Plugin.define do
name "亿邮-eyoumail"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'EMPHPSID'},
{:search=>"headers", :text=>'eYouWS'},
{:text=>'EYOU企业邮箱'},
{:text=>'cr">eYouMail'},
{:text=>'eYou.net'},
{:text=>'eYouMail'},
]
end