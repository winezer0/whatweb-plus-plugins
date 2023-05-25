Plugin.define do
name "phpMiniAdmin"
authors ["winezer0"]
description "phpminiadmin - extremely lightweight alternative to heavy phpMyAdmin for quick and easy access MySQL databases."
website "http://phpminiadmin.sourceforge.net/"
matches [
{:regexp=>/<title>phpMiniAdmin<\/title>/},
{:text=>'<title>phpMiniAdmin<\/title>'},
{:version=>/target="_blank"><b>(.*?)<\/b><\/a>/},
]
end