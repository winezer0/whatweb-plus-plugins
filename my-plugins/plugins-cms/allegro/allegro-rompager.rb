Plugin.define do
name "allegro-rompager"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton",
]
version "0.4"
description "The RomPager suite of products enable your engineering team to leverage proven Web-based technologies in your networked embedded device."
website "http://www.allegrosoft.com/embedded-web-server"
matches [
{:search=>"all", :text=>'Allegro RomPager'},
{:search=>'headers[server]',:offset=>1, :regexp=>/Allegro-Software-RomPager(?:.([\d.]+))?/},
{:text=>"", :search=>"headers[ext]"},
{:version=>/^[\s]*Allegro-Software-RomPager\/([^\s]+)/, :search=>"headers[server]"},
{:version=>/^[\s]*Allegro-Software-RomPager\/([^\s^\r^\n]+)/, :search=>"headers[server]"},
{:version=>/^[\s]*RomPager\/([^\s]+)/, :search=>"headers[server]"},
{:version=>/^[\s]*RomPager\/([^\s^\r^\n]+)/, :search=>"headers[server]"},
]
end