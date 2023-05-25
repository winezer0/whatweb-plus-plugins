Plugin.define do
name "Simple-Directory-Listing"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A php application that provides a web-based graphical interface similar to apache directory listing. Functions:copy, move, delete, rename files, etc."
website "http://sourceforge.net/simpledirectory"
dorks [
'"powered by SimpleDirectoryListing"'
]
matches [
{:regexp=>/<meta name='keywords' content='simple, directory, listing, \/[^\/]*\/? - Simple Directory Listing'><\/meta>/},
{:text=>"<form action='?system=login' method='post' onsubmit='Sdl.login.submit(); return false;'>"},
{:text=>"<i><b>powered by <a href='http://simpledirectorylisting.net'>SimpleDirectoryListing</a></b></i>"},
{:text=>"<meta name='keywords' content='simple, directory, listing'></meta>"},
{:text=>'Powered by <a href="http://sourceforge.net/simpledirectory">SimpleDirectoryListing</a>'},
]
end
