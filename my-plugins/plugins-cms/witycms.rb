Plugin.define do
name "witycms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'WityCMS'},
{:text=>'/themes/grafx/img/button-plus.png'},
{:text=>'witycms/themes.plugin'},
{:url=>"/libraries/witycms/admin.js",:text=>"wityCMS"},
]
end