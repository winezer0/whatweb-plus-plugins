Plugin.define do
name "tipask"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<meta name="copyright" content=".+? tipask.com">/},
{:text=>'<meta name="author" content="Tipask Team">'},
{:text=>'content="tipask'},
{:url=>'/css/default/category_title.png', :md5=>'795c30d270d0886d399afb38bcf0b049'},
{:url=>'/css/default/q_title.png', :md5=>'61d5c706cd001644d79752de115223a3'},
{:url=>'/robots.txt', :text=>'robots.txt for TIPASK'},
{:version=>/<p>Powered by <a rel="nofollow" target="_blank" href="http:\/\/www.tipask.com\/">Tipask v(.+)<\/a>\s*\S*<a rel="nofollow" target="_blank" href="http:\/\/www.tipask.com">tipask.com<\/a>/},
]
end