Plugin.define do
name "shopnc"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<meta name="author" content="ShopNC">'},
{:text=>'<meta name="copyright" content="ShopNC Inc. All Rights Reserved">'},
{:text=>'Copyright 2007-2014 ShopNC Inc'},
{:text=>'Powered by <a href="http://www.shopnc.net" target="_blank"><span class="vol"><font class="b">Shop</font><font class="o">NC</font></span></a>'},
{:text=>'Powered by ShopNC'},
{:text=>'content="ShopNC'},
]
end