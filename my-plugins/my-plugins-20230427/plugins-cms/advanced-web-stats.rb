Plugin.define do
name "advanced-web-stats"
authors [
"winezero",

]
version "0.2"
matches [
{:regexp=>/aws\.src = [^<]+caphyon-analytics/},
{:search=>"all", :text=>'Advanced Web Stats'},
{:text=>'caphyon-analytics.com/aws.js'},
]
end