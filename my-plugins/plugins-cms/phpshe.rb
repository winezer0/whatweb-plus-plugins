Plugin.define do
name "phpshe"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<script type="text\/javascript" src="https?:\/\/.*\..*.\.*\/?.*\/include\/js\/jquery.scrollLoading.js"><\/script>/},
{:regexp=>/href="https?:\/\/.*\.?.*\..*\/?.*\/template\/default\/index\/kefu\/css\/style.css">/},
{:text=>'Powered by phpshe'},
{:text=>'content="phpshe'},
{:url=>'/include/js/formcheck.js', :text=>'phpshe'},
{:url=>'/template/default/admin/images/btn.gif', :md5=>'d9502f7f7ee74153fec0e8c196b1e647'},
{:version=>/Powered by <a href="http:\/\/www.phpshe.com" target="_blank" title="PHPSHE.*">phpshe(.+)<\/a>/},
]
end