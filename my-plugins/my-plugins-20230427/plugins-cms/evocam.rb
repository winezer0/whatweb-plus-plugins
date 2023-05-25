Plugin.define do
name "evocam"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "EvoCam is the ultimate webcam software for Mac OS X"
website "http://www.evological.com/evocam.html"
dorks [
'intitle:"EvoCam" inurl:"webcam.html" -intitle'
]
matches [
{:regexp=>/<TITLE>EvoCam( Java| JavaScript)? Example Page<\/TITLE>/},
{:regexp=>/<applet archive="evocam.jar" code="com.evological.evocam.class"/},
{:regexp=>/<param name="archive" value="evocam.jar">/i},
{:regexp=>/<title>EvoCam( \d)*<\/title>/},
{:text=>'Powered by <A HREF="http://www.evological.com/evocam.html">EvoCam</A>'},
]
end
