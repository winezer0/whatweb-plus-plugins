Plugin.define do
name "tencent-waterproof-wall"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/captcha\.qq\.com..*/, :search=>'body'},
{:search=>"all", :text=>'Tencent Waterproof Wall'},
{:search=>'body', :regexp=>/.TCaptcha\.js/},
]
end