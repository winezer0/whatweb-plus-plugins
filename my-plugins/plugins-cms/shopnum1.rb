Plugin.define do
name "shopnum1"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<span id="shopCopyright_ctl00_labelCopyright"><p>	Copyright @\s*\S*GroupFly. All Rights Reserved.\s*\S*<\/p><\/span>/},
{:regexp=>/<span id="shopCopyright_ctl00_labelName">ShopNum1\s*\S*<\/span>/},
{:search=>"all", :text=>'shopnum1'},
{:text=>'<a id="shopCopyright_ctl00_HyperLinkUrl" target="_blank"><span id="shopCopyright_ctl00_labelPoweredBy"></span></a>'},
{:url=>'/Themes/Skin_Default/js/jquery-1.6.2.min.js', :text=>'Copyright 2011, The Dojo Foundation'},
]
end