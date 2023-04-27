Plugin.define do
name "wowza-media-server"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Wowza Media Server is used for streaming of live and on-demand video, audio, and RIAs (rich Internet applications) over public and private IP networks to desktop, laptop, and tablet computers, mobile devices, IPTV set-top boxes, internet-connected TV sets, and other network-connected devices"
website "www.wowza.com/"
dorks [
'intitle:"Wowza Media Server 3 Monthly Edition"'
]
matches [
{:regexp=>/<title>Wowza Media Server \d+ ((?:\w+ Edition )?\d+\.[\d\.]+(?: build\d+)?)?/,:offset=>1},
{:search=>"all", :text=>'Wowza Media Server'},
{:search=>"headers[www-authenticate]", :text=>'realm="Wowza Media Systems"'},
{:version=>/<html><head><title>Wowza Media Server [\d]+ Monthly Edition ([\d\.]+ build[\d]+)<\/title><\/head><body>Wowza Media Server [\d]+ Monthly Edition ([\d\.]+ build[\d]+)<\/body><\/html>/},
]
end
