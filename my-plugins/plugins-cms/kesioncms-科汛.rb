Plugin.define do
name "kesioncms-科汛"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'kesionCMS'},
{:text=>'/ks_inc/common.js'},
{:text=>'publish by KesionCMS'},
]
end