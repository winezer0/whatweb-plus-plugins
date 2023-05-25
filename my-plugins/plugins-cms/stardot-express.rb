Plugin.define do
name "Stardot-Express"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Express 6 Video Server is a small standalone server that streams video from up to six video cameras that plug into the back of it."
website "http://www.stardot-tech.com/"
dorks [
'intitle:"Express6 Live Image"'
]
matches [
{:regexp=>%r{<title>Express6 Live Image( Popup)?</title>}, :version=>'6'},
{:regexp=>%r{<tr><td><a href="http://www.stardot(-tech)?.com" target="(_new|_blank)"><img src="logo.gif" alt="" width="227" height="45"}},
{:status=>401, :certainty=>75, :name=>'WWW-Authenticate realm', :regexp=>/^Basic realm="Express6"/, :search=>"headers[www-authenticate]"},
]
end
