Plugin.define do
name "SpamTitan"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SpamTitan Anti Spam is a complete software solution to email security offering protection from Spam, Viruses, Trojans, Phishing and unwanted content."
website "http://www.spamtitan.com/products/"
dorks [
'intitle:"SpamTitan" "Language" "Czech (Czech)" "German (German)" "English (English)" "Japanese (Japanese)" "Password" "Email Address"'
]
matches [
{:regexp=>/<link rel="stylesheet" type="text\/css" href="\/?styles\/spamtitan(\.[\d]{10})?\.css" title="SpamTitanCSS2">/},
{:text=>'<table class="lhead"><tr><td class="img"><img src="/imgs/logo.gif" alt="SpamTitan Logo"></td></tr></table></div>'},
{:url=>"/imgs/favicon.ico", :md5=>"f9015ac89e34faefe9b4df73901462d9"},
{:url=>"/imgs/logo.gif", :md5=>"ab662b52fe52fa13aa13574efa7f490f"},
]
end
