Plugin.define do
name "rapidleech"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Rapid Leech is a free server transfer script for use on various popular upload/download sites such as megaupload.com, Rapidshare.com and more than 45 others. The famous Rapidleech script transfers files from Rapidshare, Megaupload, Depositfiles.com, Easy-share.com, etc, via your fast servers connection speed and dumps the file on your server. You may then download these files from your server anytime later. Rapidleech script has being used by more than 5 million users worldwide and has being installed on more than 2000 servers."
website "http://code.google.com/p/rapidleech/"
matches [
{:regexp=>/<small[^>]+>Credits to Pramode &amp; Checkmate &amp; Kloon. Mod by: MsNeil &amp; Idoenk<\/small><br/, :module=>"PlugMod"},
{:regexp=>/<small[^>]+>Credits to Pramode &amp; Checkmate &amp; Kloon<\/small><br/},
]
end
