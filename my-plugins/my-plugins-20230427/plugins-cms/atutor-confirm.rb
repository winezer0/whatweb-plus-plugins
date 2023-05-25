Plugin.define do
name "atutor-confirm"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "ATutor is a free Open Source Web-based elearning environment designed with accessibility and adaptability in mind."
website "http://www.atutor.ca/"
dorks [
'For guidance on using ATutor see the official ATutor Handbook',
'inurl:"mods/_standard/social/index_public.php"'
]
matches [
{:name=>"Documentation link", :text=>'<span id="howto">For guidance on using ATutor see the official'},
{:name=>"JavaScript", :certainty=>75, :text=>'ATutor.course = ATutor.course || {};'},
{:name=>"Meta Generator", :string=>%r{<meta name="Generator" content="ATutor - Copyright ([0-9]{4}) by http://atutor.ca" />}},
]
end
