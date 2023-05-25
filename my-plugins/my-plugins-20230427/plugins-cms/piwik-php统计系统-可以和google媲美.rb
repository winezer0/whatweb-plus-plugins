Plugin.define do
name "piwik-php统计系统-可以和google媲美"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'PIWIK_SESSID'},
{:text=>'index.php?module=Proxy")'},
]
end