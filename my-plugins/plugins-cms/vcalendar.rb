Plugin.define do
name "vcalendar"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "VCalendar is an open source Web calendar application for posting and maintaining events and schedules online. A free solution for use by online Web communities and any commercial and non-commercial organizations, available in PHP, ASP, C# and VB.NET."
website "http://sourceforge.net/projects/virtualcalendar/"
dorks [
'"powered by VCalendar" inurl:event_view.php?event_id='
]
matches [
{:certainty=>75, :text=>'<link href="Styles/Basic/Style.css" type="text/css" rel="stylesheet"></head>'},
{:text=>'Powered by <a href="http://www.vcalendar.org">VCalendar</a>'},
]
end
