Plugin.define do
name "empire-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'empire_cms'},
{:url=>'/nav/js/title.js', :text=>'className=\'navclose'},
{:url=>'/style/js/common.js', :text=>'.ico_nav_info\').bind(\'click\',function()'},
]
end