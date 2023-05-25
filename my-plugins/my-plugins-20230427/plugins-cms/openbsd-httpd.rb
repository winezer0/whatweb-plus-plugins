Plugin.define do
name "openbsd-httpd"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'OpenBSD httpd'},
{:search=>'headers[server]', :regexp=>/^OpenBSD httpd/},
]
end