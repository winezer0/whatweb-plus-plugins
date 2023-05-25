Plugin.define do
name "zblog"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>"/zb_system/script/common.js"},
{:text=>"/zb_users/theme/williamlong/script/custom.js"},
{:text=>"<meta name=\"generator\" content=\"Z-Blog "},
{:url=>"/script/common.js",:text=>"Z-Blog"},
{:url=>'/zb_system/image/common/home_1.png', :md5=>'189240b696e6db2dcedbbed0ef2c2427'},
{:url=>'/zb_system/script/common.js', :text=>'Z-Blog'},
{:version=>/<meta name=\"generator\" content=\"Z-Blog ([\d\.]+ Prism Build [\d\.]+)\"/},
]
end