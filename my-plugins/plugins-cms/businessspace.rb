Plugin.define do
name "businessspace"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "BusinessSpace community"
matches [
{:text=>'				&copy; BusinessSpace			</div>'},
{:text=>'  <title>Login to our community network!</title>'},
{:text=>'This is a place for people building a circle of professional contacts, open to sharing new business opportunities, and looking to fully promote and showcase their capabilities." />'},
]
end