Plugin.define do
name "coinhive-captcha"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/(?:<div[^>]+class="coinhive-captcha[^>]+data-key|<div[^>]+data-key[^>]+class="coinhive-captcha)/},
{:regexp=>/https?:..authedmine\.com.(?:lib.captcha|captcha)/, :search=>'body'},
{:search=>"all", :text=>'CoinHive Captcha'},
]
end