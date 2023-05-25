Plugin.define do
name "hanweb-大汉版通发布系统"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'大汉版通发布系统'},
{:text=>'大汉网络'},
{:text=>'<link rel="stylesheet" type="text/css" href="/images/1/hanweb.css">'},
{:text=>'<meta name="Author" content="大汉网络">'},
{:text=>'<a href="http://www.hanweb.com" style="display:none">Produced By 大汉网络 大汉版通发布系统</a>'},
{:text=>'<meta name="Generator" content="大汉版通">'},
{:url=>'/module/jslib/jquery/jquery.js', :text=>'Use the correct document accordingly'},
{:url=>'/script/page.css', :text=>'BORDER-RIGHT: #e6e6e6'},
]
end