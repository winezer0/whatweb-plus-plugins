Plugin.define do
name "adobe-robohelp"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/^Adobe RoboHelp(?: ([\d]+))?/},
{:search=>"all", :text=>'Adobe RoboHelp'},
{:search=>'body', :regexp=>/(?:wh(?:utils|ver|proxy|lang|topic|msg)|ehlpdhtm)\.js/},
{:text=>'generator" content="Adobe RoboHelp'},
]
end