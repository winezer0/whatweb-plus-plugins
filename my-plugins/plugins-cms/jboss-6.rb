Plugin.define do
name "jboss-6"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Server: JBoss'},
]
end