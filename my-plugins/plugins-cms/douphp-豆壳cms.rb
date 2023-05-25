Plugin.define do
name "douphp-豆壳cms"
authors [
"winezero",
]
version "0.2"
matches [
{:text=>"Powered by DouPHP"},
{:text=>'DouPHP'},
{:text=>'Powered by DouPHP'},
{:text=>'recommendProduct")'},
{:url=>'/admin/images/global.js', :text=>'dou_callback'},
{:url=>'/m/theme/default/style.css', :text=>'douco'},
{:version=>/<meta name="generator" content="DouPHP (<.*?>)">/},
]
end