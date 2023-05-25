Plugin.define do
name "novell-sentinel-log-manager"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Novell Sentinel Log Manager - log management solution"
website "http://www.novell.com/promo/slm/slm25.html"
dorks [
'inurl:"novelllogmanager/views/logManager.html"'
]
matches [
{:text=>'<META HTTP-EQUIV="refresh" CONTENT="0;URL=/novelllogmanager">'},
{:text=>'<p class="content">Novell Sentinel Log Manager supports Firefox 3 (works best on 3.6) and Internet Explorer 8 (works best on 8.0)</p>'},
{:version=>/<h1 id="site-logo" class="logo" title="Novell Sentinel Log Manager"><span class="accessible">Novell Identity Audit<\/span><\/h1>\s+<p class="publisher">Novell<\/p>\s+<p class="version">Version ([^>]+)<\/p>/},
]
end