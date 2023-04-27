Plugin.define do
name "Canon-Network-Camera"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Canon's new all-in-one VB-C50i and VB-C50iR (in a reverse mount) pan/tilt/zoom (PTZ) network video cameras allow individuals, whether in the back storage room or airport waiting room, to remotely view live video footage even in the most adverse conditions. - http://www.usa.canon.com/templatedata/pressrelease/20040331_vbc50i.html"
matches [
{:certainty=>75,:ghdb=>'+intitle:"Network Camera VB-C50i/VB-C50iR" +"Viewer for PC"'},
{:certainty=>75,:ghdb=>'intitle:liveapplet inurl:LvAppl'},
{:text=>'<TITLE>Network Camera VB-C50i/VB-C50iR</TITLE>', :version=>'VB-C50i'},
{:text=>'<param name=cabbase	value="LiveApplet.cab">',:version=>"WebView"},
{:text=>'<title>LiveApplet</title>',:version=>"WebView"},
{:text=>'function L(n,g) {var i=document.images[n]; if (i)I[n]=new H(i,i.src,"/v/"+g+".gif")}',:version=>"VB-C50i"},
{:text=>'function L(n,g) {var i=document.images[n];if (i)I[n]=new H(i,i.src,"/v/"+g+".gif")}',:version=>"VB-C50i"},
]
end
