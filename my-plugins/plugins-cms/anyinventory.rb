Plugin.define do
name "anyInventory"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "anyInventory, the most flexible and powerful web-based inventory system"
website "http://anyinventory.sourceforge.net/"
matches [
{:regexp=>/					 you have inventoried <b>[0-9]*<\/b>  items with <a href="http:\/\/anyinventory.sourceforge.net\/">anyInventory, the most flexible and powerful web-based inventory system<\/a>/},
{:text=>'		<title>anyInventory: Top</title>'},
{:version=>/								anyInventory ([\d\.]+)/},
]
end
