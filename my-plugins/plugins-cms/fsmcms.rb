Plugin.define do
name "fsmcms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/COPYRIGHT .*? BJDFWH.COM.CN/},
{:text=>'Email :cms@fsmcms.com.cn'},
{:url=>'/fsmcms/sites/main/css/style.css', :text=>'Design: moon'},
{:url=>'/sites/main/css/style.css', :text=>'Design: moon'},
]
end