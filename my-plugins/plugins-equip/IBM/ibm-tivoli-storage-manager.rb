Plugin.define do
name "ibm-tivoli-storage-manager"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'IBM Tivoli Storage Manager'},
{:search=>'headers[server]',:offset=>1, :regexp=>/TSM_HTTP(?:.([\d.]+))?/},
]
end