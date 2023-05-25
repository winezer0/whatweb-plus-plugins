Plugin.define do
name "ruvar-oa"
authors [
"winezero",
]
version "0.1"
matches [
{:url=>'/script/js_common.js', :text=>'GetQueryString(querystring)'},
]
end