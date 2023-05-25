Plugin.define do
name "McAfee-Secure"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "McAfee Secure sites apparently help keep you safe from identity theft, credit card fraud, spyware, spam, viruses and online scams"
website "http://www.mcafeesecure.com/"
matches [
{:string=>/<a target="?_blank"? href="https?:\/\/www\.(mcafeesecure|scanalert)\.com\/RatingVerify\?ref=([^"]+)"[^>]*>[\s]*<img/i, :offset=>1 },
]
end
