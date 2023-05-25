Plugin.define do
name "Moodle"
authors [
"Andrew Horton",

]
version "0.2"
description "Opensource educational software written in PHP."
website "http://www.moodle.org/"
dorks [
'inurl:"login/index.php?MoodleSession"'
]
matches [
{:mmh3=>'-438482901'},
{:name=>"MOODLEID_ Cookie", :search=>"headers[set-cookie]", :regexp=>/MOODLEID_[^\s^=]*=/},
{:name=>"MoodleSession Cookie", :search=>"headers[set-cookie]", :regexp=>/MoodleSession=/},
{:name=>"moodle logo.gif", :certainty=>75, :regexp=>/<img style="width:100px;height:30px" src="[^"]+\/moodlelogo\.gif" alt="moodlelogo" \/>/},
{:regexp=>/<a title="Moodle[^"]+" href="http:\/\/moodle\.org\/">/},
{:regexp=>/<img[^>]+moodlelogo/},
{:regexp=>/^moodle/, :search=>'body'},
{:url=>"/favicon.ico",:allhash=>"933a83c6e9e47bd1e38424f3789d121d"},
{:url=>"/favicon.ico",:allhash=>"b6652d5d71f6f04a88a8443a8821510f"},
{:version=>/<a title="Moodle ([\d\.]+[^"]+)" href="http:\/\/moodle\.org\/">/},
]
end
