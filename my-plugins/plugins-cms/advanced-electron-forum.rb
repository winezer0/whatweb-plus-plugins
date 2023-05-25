Plugin.define do
name "advanced-electron-forum"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'aefsid'},
{:text=>'Powered By AEF'},
{:text=>'content="aef'},
]
end