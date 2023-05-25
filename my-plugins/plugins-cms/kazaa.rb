Plugin.define do
name "KaZaA"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.2"
description "This plugin retrieves the KaZaA IP:port combination, network and username from the HTTP headers."
passive do
m=[]
m << { :string=>@headers["x-kazaa-ip"] } unless @headers["x-kazaa-ip"].nil?
m << { :module=>@headers["x-kazaa-network"] } unless @headers["x-kazaa-network"].nil?
m << { :account=>@headers["x-kazaa-username"] } unless @headers["x-kazaa-username"].nil?
m
end
matches [
{:regexp=>/<span class="smalltext"><font color="#333333">Powered by e(Support|SupportSuite)<br\/>Copyright &copy; 2001-[0-9]{4} Kayako Infotech Ltd.<\/font><\/span><br \/>/},
{:search=>"headers[set-cookie]", :text=>"SWIFT_client"},
{:text=>' - Powered By Kayako eSupport</title>'},
{:text=>'<div id="bottomfooter" class="bottomfooterpadding"><a href="http://www.kayako.com" target="_blank" class="bottomfooterlink">Help Desk Software"'},
{:text=>'Help Desk Software By Kayako eSupport'},
{:text=>'Powered By Kayako eSupport'},
{:url=>"/favicon.ico",:allhash=>"ff3b533b061cee7cfbca693cc362c34a"},
{:version=>/<a href="http:\/\/www.kayako.com" target="_blank" title="Help Desk Software">Help Desk Software<\/a>&nbsp;by Kayako SupportSuite v([\d\.]+)/},
{:version=>/<a href="http:\/\/www.kayako.com" target="_blank">Help Desk Software By Kayako eSupport v([\d\.]+)<\/a>/},
{:version=>/<td width="144" align="left" valign="top"><span class="smalltext"><font color="#333333">([\d\.]+)<\/font><\/span><\/td>/},
{:version=>/SWIFT\.Setup[^}]*"version":"([0-9\.]+)"/},
]
end