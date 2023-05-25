Plugin.define do
name "webdvr"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Digital video recording system web fronend"
matches [
{:text=>'		alert("Direct Draw Overlay Mode: It is faster than GDI but only available on ATI Video Card and requires Direct 7 or above.\nIf you have other video cards than ATI, you shouldn\'t use this mode.");'},
{:text=>'		alert("DirectDraw Video acceleration will be enabled if your VGA card supports Microsoft DirectX 8.1 or later.");'},
{:text=>'		window.location="webdvr.html";'},
{:text=>'<TITLE>WEBDVR</TITLE>'},
{:text=>'<title>WebDVR</title>'},
]
end
