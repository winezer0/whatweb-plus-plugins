Plugin.define do
name "syncthru-web-service"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'syncthru_web_service'},
{:url=>'/images/samsung_logo.gif', :md5=>'cdbad4c9b6c25ce0aedc810d3113d78a'},
{:url=>'/index.html', :text=>'<title>SyncThru Web Service</title>'},
{:url=>'/js/cookieCode.js', :text=>'SetCookie ( inCookieName, inCookieValue, inCookieExpiration)'},
]
end