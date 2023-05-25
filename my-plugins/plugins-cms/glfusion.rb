Plugin.define do
name "glFusion"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Powerful content management with synergy, stability, & style. A dynamic system based on flexible and granular permissions, with spam protection, forums, file management, media gallery, calendars, polls, site-wide search, RSS feeds, and more!"
website "http://www.glfusion.org/"
matches [
{:certainty=>75, :regexp=>/<div (class|id)="gl_moomenu1">/},
{:certainty=>75, :text=>'<ul class="gl_moomenu1">'},
{:regexp=>/Page created in [\d\.]+ seconds( |&nbsp;)by <a href="http:\/\/www.glfusion.org\/"[^>]*>glFusion<\/a>/},
{:text=>'by <a href="http://www.glfusion.org/'},
]
end
