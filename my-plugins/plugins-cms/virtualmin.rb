Plugin.define do
name "Virtualmin"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Virtualmin is a powerful and flexible web server control panel based on the well-known Open Source web-based systems management GUI, Webmin."
website "http://www.virtualmin.com/"
dorks [
'"Forgot your Virtualmin password?"'
]
matches [
{:name=>"virtualmin default text", 
:text=>'<center><a href=/virtualmin-password-recovery/>Forgot your Virtualmin password?</a></center>'},
{:name=>'GHDB: "Forgot your Virtualmin password?"',
:certainty=>75,
:ghdb=>'"Forgot your Virtualmin password?"'},
]
end
