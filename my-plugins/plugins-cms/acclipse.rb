Plugin.define do
name "Acclipse"
authors [
"Andrew Horton",

]
version "0.3"
description "Acclipse is a web CMS found mainly in New Zealand and Australia. It is popular with accountants."
website "www.acclipse.com"
matches [
{:name=>"Footer link",
:regexp=>/<a href="http:\/\/www\.(acclipse|acclipseweb)\.(co\.nz|com\.au)[\/]?(for_Businesses)?" target="_blank"( class="poweredbylink")?>(Software solutions for accountants|Web design New Zealand|Web design Australia)<\/a>/},
{:name=>"Website powered by",
:text=>"Website powered by <A href=\"http://www.acclipse.com.au\" target=_blank>Acclipse</A>"},
{:name=>"acclipse link with uppercase A href",
:text=>"<A href=\"http://www.acclipse.co.nz/\" target=_blank></A>"},
{:name=>"https://secure.acclipse.com link",
:regexp=>/https:\/\/secure\.acclipse(web)?\.com\/[^\/]*\/index\.cfm/},
]
end
