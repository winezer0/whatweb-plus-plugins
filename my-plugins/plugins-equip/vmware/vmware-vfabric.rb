Plugin.define do
name "vmware-vfabric"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'TS01efd1fa'},
{:text=>'vFabric'},
]
end