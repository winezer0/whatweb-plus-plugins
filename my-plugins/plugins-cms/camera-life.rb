Plugin.define do
name "camera-life"
authors [
"Andrew Horton",
]
version "0.1"
description "Camera Life is an open source software package you install and run on your own server running PHP and MySQL."
website "https://fulldecent.github.io/cameralife/"
matches [
{:string=>'<a href="http://fulldecent.github.io/cameralife"><i class="fa fa-globe"></i> Built with Camera Life</a>'},
{:version=>/<meta name="generator" content="Camera Life version ([^"]+)">/},
{:version=>/This site is powered by Camera Life version ([^ ]+)/},
]
end