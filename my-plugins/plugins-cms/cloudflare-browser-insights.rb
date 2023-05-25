Plugin.define do
name "cloudflare-browser-insights"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'body', :regexp=>/static\.cloudflareinsights\.com.beacon(?:\.min)?\.js/},
]
end