Plugin.define do
name "zdsoft-cnet"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'zdsoft_cnet'},
{:url=>'/cnet/system/login.jsp', :text=>'ZDSOFT.NET'},
{:url=>'/cnet/template/1/common.css', :text=>'modelno{'},
]
end