Plugin.define do
name "weway-soft"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'weway_soft'},
{:url=>'/Common/Main.css', :text=>'border:0px buttonhighlight outset;'},
{:url=>'/Resources/md5/md5.js', :text=>'CryptoJS=CryptoJS'},
{:url=>'/crm/Common/Main.css', :text=>'border:0px buttonhighlight outset;'},
{:url=>'/crm/Resources/md5/md5.js', :text=>'CryptoJS=CryptoJS'},
]
end