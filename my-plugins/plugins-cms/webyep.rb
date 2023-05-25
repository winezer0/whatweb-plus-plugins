Plugin.define do
name "WebYep"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WebYep is a compact Web Content Management System, making editable Websites extremely easy to create and maintain. Different to bigger WebCMS tools, WebYep offers a low priced alternative for small Websites. Requires: PHP"
website "http://www.obdev.at/products/webyep/index.html"
matches [
{:text=>'<html><!-- InstanceBegin template="/Templates/panels.dwt.php" codeOutsideHTMLIsLocked="false" -->'},
{:text=>'<p class="warning">To edit these pages with WebYep you need to <strong>enable JavaScript</strong> in your Web'},
]
end
