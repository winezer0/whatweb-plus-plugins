Plugin.define do
name "msfweb"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton",
]
version "0.2"
description "Metasploit Framework Web Console"
website "http://www.metasploit.com/"
matches [
{:regexp=>/<script>[\r\n\s]*document.writeln('<link rel="stylesheet" type="text\/css" href="' + mainStyle + '">'); \/\/ MSFWeb main stylesheet[\r\n\s]*document.writeln('<link rel="stylesheet" type="text\/css" href="' + windowStyle + '">'); \/\/ Window frame stylesheet[\r\n\s]*<\/script>/},
{:regexp=>/<script>[\s]*document.writeln('<link rel="stylesheet" type="text\/css" href="' + mainStyle + '">'); \/\/ MSFWeb main stylesheet[\s]*document.writeln('<link rel="stylesheet" type="text\/css" href="' + windowStyle + '">'); \/\/ Window frame stylesheet[\s]*<\/script>/},
{:text=>'<meta name="Author" content="Mike Whitehead (mwhite22[at]caledonian.ac.uk), Metasploit LLC" />'},
{:text=>'<meta name="Copyright" content="(c) 2007, Mike Whitehead (mwhite22[at]caledonian.ac.uk), (c) 2006-2007 Metasploit LLC" />'},
{:version=>/<title>Metasploit Framework Web Console [v]?([\d\.]{1,6})-(dev|release)<\/title>/, :offset=>1},
]
end