Plugin.define do
name "twitter-emoji-twemoji"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/twemoji(?:\.min)?\.js/, :search=>'body'},
{:search=>"all", :text=>'Twitter Emoji (Twemoji)'},
]
end