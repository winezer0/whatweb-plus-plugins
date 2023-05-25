Plugin.define do
name "shop7z"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<span style="font-size:14px;">Shop7z\s*\S*COPYRIGHT\s*\S*Shop7z.COM ALL RIGHTS RESRVED\s*<\/span>/},
{:search=>"headers", :text=>'sitekeyword'},
{:text=>"div class=\"Shop7z_kefu\">"},
{:text=>'headlist")'},
{:url=>'/admin/images/login-top-bg.gif', :md5=>'8c6823e9c228395a7d41fd5650ca893b'},
]
end