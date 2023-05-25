Plugin.define do
name "cherrypy"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'CherryPy'},
{:search=>'headers[server]',:offset=>1, :regexp=>/CherryPy(?:.([\d.]+))?/},
]
end