Plugin.define do
name "seafile"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<img src="\/media\/img\/seafile-logo.png/},
{:search=>"all", :text=>'seafile'},
]
end