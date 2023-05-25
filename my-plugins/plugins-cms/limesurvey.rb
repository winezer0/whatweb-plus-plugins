Plugin.define do
name "limesurvey"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "LimeSurvey basically contains everything you need for doing nearly every survey with grace."
website "http://www.limesurvey.org/"
dorks [
'"The following surveys are available" "The Online Survey Tool - Free & Open Source"'
]
matches [
{:name=>"default text",
:text=>'<a href="http://www.limesurvey.org" target="_blank"><font color="#000000">The Online Survey Tool</font></a> - Free & Open Source<br />'},
{:name=>"meta generator",
:text=>'<meta name="generator" content="LimeSurvey http://www.limesurvey.org" />'},
{:name=>'GHDB: +"The following surveys are available" +"The Online Survey Tool - Free & Open Source"',
:certainty=>75,
:ghdb=>'+"The following surveys are available" +"The Online Survey Tool - Free & Open Source"'},
{:regexp=>/LimeSurvey/, :search=>'headers[generator]'},
{:search=>"all", :text=>'LimeSurvey'},
{:url=>"/favicon.ico",:allhash=>"f89abd3f358cb964d6b753a5a9da49cf"},
]
end