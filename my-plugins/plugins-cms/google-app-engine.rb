Plugin.define do
name "google-app-engine"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Google App Engine'},
{:search=>'headers[server]', :regexp=>/Google Frontend/},
]
end