Plugin.define do
name "xiaowuyou-cms"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'xiaowuyou_cms'},
{:url=>'/admin/login.asp', :text=>'class=pwd id=VerifyCode'},
]
end