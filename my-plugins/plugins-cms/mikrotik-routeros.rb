Plugin.define do
name "mikrotik-routeros"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'RouterOS'},
{:text=>'mikrotik'},
{:url=>"/webfig/iframe.html", :text=>'<body onload="parent.generateContent(parent.location.hash.substr(1));">'},
]
end