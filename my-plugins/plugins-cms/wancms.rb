Plugin.define do
name "wancms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<link rel="stylesheet" type="text\/css" href="(\/wancms)?\/public\/Phonegame\/css\/youxi.css">/},
{:regexp=>/url:"(\/wancms)?\/index.php?g=&m=Game&a=history"/},
{:search=>"all", :text=>'wancms'},
]
end