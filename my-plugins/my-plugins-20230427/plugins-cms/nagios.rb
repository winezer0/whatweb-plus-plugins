Plugin.define do
name "nagios" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Nagios access'},
{:serach=>'headers', :text=>'Nagios Access'},
{:serach=>'headers', :text=>'nagios admin'},
{:text=>'/nagios/cgi-bin/status.cgi'},
{:url=>"/favicon.ico",:allhash=>"1c4201c7da53d6c7e48251d3a9680449"},
]
end