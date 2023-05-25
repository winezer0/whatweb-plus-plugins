Plugin.define do
name "OLAT"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OLAT - Online Learning And Training. OLAT offers a flexible online course system along with extensive features to guarantee learning and teaching independent of time and place. It has been created especially for public institutions such as universities, academies or colleges, but it is also suitable for other businesses."
website "http://www.olat.org/website/en/html/index.html"
dorks [
'intitle:"OLAT - Online Learning And Training" "OLAT password"'
]
matches [
{:certainty=>25, :text=>'<meta name="DC.creator" content="University of Zurich - http://www.uzh.ch" />'},
{:certainty=>75, :text=>'<body onload="b_start();" id="b_body" class="b_lang_en">'},
{:certainty=>75, :text=>'<body onload="b_start();" id="b_body">'},
{:certainty=>75, :text=>'<body onload="o2start();" class="o_body">'},
{:certainty=>75, :text=>'<meta name="DC.subject" content="OLAT - Online Learning And Training - Your Open Source Learning Management System" />'},
{:text=>'<!-- START olatContentPanel -->'},
{:text=>'<a accesskey="2" href="#content" title="Go to "Content""></a>'},
{:text=>'<meta name="DC.contributor" content="see http://www.olat.org/website/en/html/download_license.html" />'},
{:text=>'<title>OLAT - Online Learning And Training </title>'},
{:text=>'<title>OLAT - Online Learning And Training</title></head>'},
{:version=>/<div id="b_footer_version">[\s]+<a href="http:\/\/www\.olat\.org"  title="Homepage of Open Source LMS OLAT" target="_blank">OLAT ([^<]+)<\/a>/},
{:version=>/<div id="o_footer_version">[\s]+<a href="http:\/\/www\.olat\.org"  title="Homepage of Open Source LMS OLAT" target="_blank">[\s]+OLAT ([^<^\n]+)[\s]+<\/a>/},
]
end
