Plugin.define do
name "Index-Of"
authors [
"Andrew Horton",
]
version "0.2"
description "Index of"
dorks [
'name "last modified" size description'
]
matches [
{:certainty=>75, :ghdb=>'name "last modified" size description'},
{:name=>"minimal apache listing",
:regexp=>/<title>Index of \/[^<]*<\/title>[\s]*<\/head>[\s]*<body>[\s]*<h1>Index of /},
{:regexp=>/<A HREF="\?N=D">Name<\/A>[\s]+<A HREF="\?M=A">Last modified<\/A>/},
{:regexp=>/<a href="\?C=N;O=D">Name<\/a>[\s]*<a href="\?C=M;O=A">Last modified<\/a>/},
{:regexp=>/<pre>Name[\s]+Last modified[\s]+Size[\s]+<hr>/},
{:text=>'<a href="?C=N;O=D">Name</a></th><th><a href="?C=M;O=A">Last modified</a>'},
{:text=>'<title>Index of /'},
]
end