Plugin.define do
name "linksys-router"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Linksys router"
website "http://www.linksys.com/"
matches [
{:model=>'WRT54GC', :md5=>"0b749361e0c9ab37b9f8875b0667d713", :url=>'/UI_Linksys.gif'},
]
end
