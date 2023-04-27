Plugin.define do
name "vTigerCRM"
authors [
"Aung Khant <http://yehg.net/>", 

]
version "0.1"
description "vTigerCRM - http://www.vtiger.com/"
matches [
{:name=>'copyright footer', :regexp=>/&copy; 200[\d]{1}\-\d{4} <a href='http:\/\/www.vtiger.com' target='_blank'>vtiger.com<\/a>/},
{:name=>'favicon md5', :url=>'/include/images/vtigercrm_icon.ico',:md5=>'d90cc1762bf724db71d6df86effab63c'},
{:name=>'favicon md5', :url=>'/themes/images/vtigercrm_icon.ico',:md5=>'d90cc1762bf724db71d6df86effab63c'},
{:name=>'html body favicon', :text=>'/vtigercrm_icon.ico">'},
{:name=>'stats img', :text=>'<img src=\'http://stats.vtiger.com/stats.php?uid='},
{:version=>/<span style='color: rgb\([\d]{1,3}, [\d]{1,3}, [\d]{1,3}\);'>vtiger CRM ([^<]*)<\/span>/},
]
end
