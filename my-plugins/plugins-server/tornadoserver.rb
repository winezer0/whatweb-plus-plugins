Plugin.define do
name "tornadoserver"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'TornadoServer'},
{:search=>'headers[server]',:offset=>1, :regexp=>/TornadoServer(?:.([\d.]+))?/},
]
end