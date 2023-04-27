Plugin.define do
name "Webgrind"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Webgrind is an Xdebug profiling web frontend in PHP5. It implements a subset of the features of kcachegrind and installs in seconds and works on all platforms."
website "https://github.com/jokkedk/webgrind"
dorks [
'intitle:"Webgrind" "profiling in the browser" "percent" "milliseconds" "microseconds"'
]
matches [
{:text=>'<img class="list_reload" src="img/reload.png" onclick="reloadFilelist()">'},
{:text=>'<span id="invocation_sum"></span> different functions called in <span id="runtime_sum"></span> milliseconds (<span id="runs"></span> runs, <span id="shown_sum"></span> shown)'},
{:version=>/<h1>webgrind<sup style="font-size:10px">v([^<]+)<\/sup><\/h1>/},
]
end
