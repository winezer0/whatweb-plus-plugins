Plugin.define do
name "linkedin-insight-tag"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'body', :regexp=>/snap\.licdn\.com.li\.lms-analytics.insight\.min\.js/},
]
end