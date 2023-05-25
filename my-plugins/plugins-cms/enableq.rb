Plugin.define do
name "enableq"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'/enableq.css'},
{:text=>'href="http://www.enableq.com/cn/buy/price.html"'},
{:url=>"/Images/enableq.ico", :md5=>"651f6b2c476f06e551fd48bbee202aa9"},
{:url=>"/License/ServicesTerm.html", :md5=>"3a5c3bd0479be0b5f1c0f12dd839b590"},
{:url=>'/CSS/Index.css', :text=>'enableq'},
{:url=>'/Images/sidebg.gif', :md5=>'486bc4117d7ab576e34217fc2b633a6a'},
]
end