Plugin.define do
name "phpb2b"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<p>Powered by PHPB2B .* <a href="http:\/\/www.phpb2b.com\/" target="_blank"><strong>Ualink<\/strong><\/a>/},
{:text=>'<meta name="description" content=" phpb2b'},
{:text=>'Powered By PHPB2B'},
{:url=>'/robots.txt', :text=>'robots.txt for PHPB2B'},
{:url=>'/templates/skins/default/screenshot.jpg', :md5=>'a322dfd639bd61a5aadc580bd8516dcd'},
]
end