Plugin.define do
name "TraceWatch"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TraceWatch Real Time Web Stats and Traffic Analysis Lets you keep track of the visitors to your website in real time with detailed statistics and deep analysis using an innovative user interface for FREE and helps you make your website more effective. Can be easily installed on any website supporting PHP and MySQL."
website "http://www.tracewatch.com/"
dorks [
'"TraceWatch" "Website Statistics and Traffic Analysis Software" "author"'
]
matches [
{:text=>'<h1 class="main"><a href="http://www.tracewatch.com/"><img alt="TraceWatch" title="TraceWatch" src="./base/img/tracewatch'},
{:version=>/<a href="http:\/\/www\.tracewatch\.com\/">TraceWatch<\/a> V?([^\s]+) Copyright &copy;2004-20[\d]{2} Arash Dejkam/},
]
end
