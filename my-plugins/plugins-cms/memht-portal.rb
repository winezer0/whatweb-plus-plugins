Plugin.define do
name "MemHT-Portal"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MemHT Portal is a Free PHP CMS and Blog. It permits the creation and the management online of websites with few and easy steps. It's completely customizable, expandable and suitable for all needs."
website "http://www.memht.com/"
dorks [
'"MemHT Portal is a free software released under the GNU/GPL License by Miltenovik Manojlo"'
]
matches [
{:text=>"// MemHT Portal is free, released under a very permissive license as"},
{:text=>"<a href='http://www.memht.com' title='MemHT.com' target='_blank'><b>MemHT Portal</b></a> is a free software released under the GNU/GPL License by <a href='http://www.memht.com' title='MemHT.com' target='_blank'><b>Miltenovik Manojlo</b></a>"},
{:text=>"<meta name='author' content='MemHT Portal (www.memht.com) - Miltenovik Manojlo'>"},
]
end
