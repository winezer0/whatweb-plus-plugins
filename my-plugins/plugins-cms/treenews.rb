Plugin.define do
name "TreeNeWS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Probably a 3Com Corporation or Trapeze Networks wireless access point"
matches [
{:search=>"headers[server]", :version=>/^TreeNeWS\/([^\s]+)$/},
{:url=>"/vendor.js", :model=>/var _OTHER_SYSTEM_MANAGEMENT_NAME_ = '([^']+)';/},
{:url=>"/vendor.js", :string=>/var _VENDOR_ = "([^"]+)";/},
]
end
