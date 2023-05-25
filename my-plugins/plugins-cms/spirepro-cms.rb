Plugin.define do
name "SpirePRO-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Custom CMS from Boston web design and hosting company 1stOmni - http://www.1stomni.com/"
matches [
{:regexp=>/<meta name="Spire-Editor" content="([^"]+)">/},
{:regexp=>/^SpirePRO CMS/, :search=>"headers"},
{:string=>/^SpirePRO CMS v([\d\.]+ \(Microkernel v[\d]+; CMS Server v[\d]+\)) /, :search=>"headers[generator]"},
{:string=>/^SpirePRO CMS v([\d\.]+ \(Microkernel v[\d]+; CMS Server v[\d]+\)) /, :search=>"headers[x-generator]"},
{:text=>'<meta name="Spire-Last-Modified" content="'},
{:text=>'<script xmlns:a="http://www.1stomni.com/spire/aml" type="text/javascript"'},
]
end
