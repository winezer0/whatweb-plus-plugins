Plugin.define do
name "hdwiki"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'hd_sid='},
{:text=>"content=\"HDWiki"},
{:text=>"hdwiki.css"},
{:text=>"http://kaiyuan.hudong.com?hf=hdwiki_copyright_kaiyuan"},
{:text=>"powered by hdwiki!"},
{:text=>'content="HDWiki'},
{:text=>'http://kaiyuan.hudong.com?hf=hdwiki_copyright_kaiyuan'},
{:text=>'powered by hdwiki!'},
{:url=>"/js/api.js",:text=>"hdwiki"},
{:url=>"/robots.txt",:text=>"hdwiki"},
{:url=>'/style/default/hdwiki.css', :md5=>'59b35e72b37ffc2886f76873c93fbcd9'},
]
end