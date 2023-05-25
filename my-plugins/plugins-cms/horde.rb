Plugin.define do
name "horde"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Horde3'},
{:search=>"headers", :text=>'Set-Cookie: Horde'},
{:text=>'IMP: Copyright 2001-2009 The Horde Project'},
{:url=>"/favicon.ico",:allhash=>"5e99522b02f6ecadbb3665202357d775"},
{:url=>"/favicon.ico",:allhash=>"7cc1a052c86cc3d487957f7092a6d8c3"},
]
end