Plugin.define do
name "kingdee-oa"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'kingdee_oa'},
{:url=>'/kingdee/login/images/btn_submit.gif', :md5=>'832e52c93417d84010cf181f8de19735'},
{:url=>'/oa/scripts/admin.js', :text=>'batch_do(entityName, action)'},
]
end