Plugin.define do
name "dtcms"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>"dtcms.net"},
{:text=>'content="动力启航,DTCMS'},
{:text=>'dtcms'},
{:url=>"/admin/login.aspx",:text=>"ie6update.html"},
]
end