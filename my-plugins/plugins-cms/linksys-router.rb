Plugin.define do
name "linksys-router"
authors [
"winezero",
]
version "0.1"
matches [
{:model=>'WRT54GC', :md5=>"0b749361e0c9ab37b9f8875b0667d713", :url=>'/UI_Linksys.gif'},
{:search=>"all", :text=>'Linksys Router'},
]
end