Plugin.define do
name "Nintendo-GameCube"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Nintendo GameCube video game console"
website "http://www.nintendo.com/"
dorks [
'intitle:"HTML Page" "This is test.html page"'
]
passive do
m=[]
m << { :certainty=>75, :name=>"Server Header" } if @headers["server"] =~ /^Game[\s]?Cube$/
m << { :certainty=>75, :name=>"X-Organization Header" } if @headers["x-organization"] =~ /^Nintendo$/
m
end
matches [
{:regexp=>/<link href="[^"]*\/assets\/css\/ninko.css" rel="stylesheet" type="text\/css" \/>/},
{:text=>'Powered by <a href="http://ninkobb.com">NinkoBB</a>'},
{:version=>/Powered by <a href="http:\/\/ninkobb.com\/">NinkoBB<\/a> v. ([\d\.]{1,5}) t./},
]
end