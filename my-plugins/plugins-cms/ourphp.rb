Plugin.define do
name "ourphp"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<meta name="Author" content="www.ourphp.net">'},
{:text=>'Powered by ourphp'},
{:text=>'content="OURPHP'},
{:url=>'/favicon.ico', :md5=>'a081cf3acc29aa08a215607faa762e61'},
{:version=>/<p>Powered by <a href="http:\/\/www.ourphp.net" target="_blank">www\.Ourphp\.net<\/a>&nbsp;v(.+)&nbsp;<\/p>/},
]
end