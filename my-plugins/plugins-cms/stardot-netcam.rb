Plugin.define do
name "StarDot-NetCam"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Stardot network camera web interface"
website "http://www.stardot-tech.com/ "
matches [
{:regexp=>/<applet code="CaptureClient.class" width="[\d]+" height="[\d]+" alt="NetCam Live [Stream|Image]+">/},
{:regexp=>/<applet code="CaptureClient.class" width="[\d]+" height="[\d]+" alt="NetCamXL Live [Stream|Image]+">/, :version=>"XL"},
{:regexp=>/<title>NetCam Live Image[\ Popup]*<\/title>/},
{:regexp=>/<title>NetCamXL Live Image[\ Popup]*<\/title>/, :version=>"XL"},
]
end
