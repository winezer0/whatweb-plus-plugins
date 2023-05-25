Plugin.define do
name "crypto-loot"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/.crlt\.js/, :search=>'body', :certainty=>75},
{:regexp=>/^.crypto-loot\.com.lib./, :search=>'body'},
{:regexp=>/^.cryptoloot\.pro./, :search=>'body'},
{:search=>"all", :text=>'Crypto-Loot'},
{:search=>'body', :regexp=>/^.webmine\.pro./},
]
end