Plugin.define do
name "samphpweb"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "samPHPweb is a web feature that is included with the installation of SAM Broadcaster. It allows you to run a PHP driven site from your web host that communicates with your SAM Database."
website "http://www.spacialaudio.com/?page=sam-broadcaster&tab=tab-sam-broadcaster-overview"
matches [
{:certainty=>75,:ghdb=>'"This page was produced using SAM Broadcaster" "Copyright Spacial Audio Solutions"'},
{:certainty=>75,:text=>'<meta HTTP-EQUIV="REFRESH" CONTENT="0;url=playing.html">'},
{:text=>' songwin = window.open("songinfo.php?songid="+songid, "songinfowin", "location=no,status=no,menubar=no,scrollbars=yes,resizeable=yes,height=400,width=650");'},
{:text=>'<a href="http://www.spacialaudio.com/products/sambroadcaster/" target="_blank"><img src="images/sam-bc.gif" border="0" alt="Powered by SAM Broadcaster" width="120" height="60" />'},
{:text=>'<a href="http://www.spacialaudio.com/products/sambroadcaster/" target="_blank"><img src="images/sam-bc.gif" width="120" height="60" border="0" alt="Powered by SAM Broadcaster">'},
{:text=>'This page was produced using <a target="_blank" href="http://www.spacialaudio.com/products/sambroadcaster/">SAM Broadcaster</a>. © Copyright <a target="_blank" href="http://www.spacialaudio.com">Spacial Audio Solutions, LLC</a>'},
]
end
