Plugin.define do
name "artifactory-web-server"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Artifactory Web Server'},
{:search=>'headers[server]',:offset=>1, :regexp=>/Artifactory(?:.([\d.]+))?/},
]
end