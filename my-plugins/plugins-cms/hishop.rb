Plugin.define do
name "hishop"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<div id="hishop_wx" style="display: none;">'},
{:text=>'Hishop development team'},
{:text=>'hishop.plugins.openid'},
{:text=>'o=www.hishop.com.cn&amp;'},
]
end