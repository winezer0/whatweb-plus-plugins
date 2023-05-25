Plugin.define do
name "chanzhieps"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<div id="powerby">\s*<a href="http:\/\/www.chanzhi.org\/?v=(.+)"/},
{:regexp=>/<span class="icon-chanzhi"><\/span> <span class="name">\S*<\/span>(.+)<\/a>/},
{:search=>"all", :text=>'chanzhiEPS'},
{:version=>/<meta name="Generator" content="chanzhi(.+) www.chanzhi.org'">/},
]
end