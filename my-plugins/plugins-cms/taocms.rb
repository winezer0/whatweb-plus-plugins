Plugin.define do
name "taocms"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<link rel="stylesheet" href="./template/taoCMS/images/style.css" type="text/css">'},
{:text=>'<script src="./template/taoCMS/images/tao.js" language="javascript"></script>'},
{:text=>'>taoCMS<'},
{:text=>'Powered By <a href="http://www.taocms.org/" target="_blank">taoCMS</a>'},
{:url=>'/template/taoCMS/images/style.css', :text=>'taogogo'},
{:url=>'/template/taoCMS/images/tao.js', :text=>'$tao'},
]
end