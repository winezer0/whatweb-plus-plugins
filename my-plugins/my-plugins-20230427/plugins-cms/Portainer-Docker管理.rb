Plugin.define do
name "Portainer-Docker管理"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/portainer.updatePassword|portainer.init.admin/},
{:search=>"all", :text=>'portainer'},
]
end