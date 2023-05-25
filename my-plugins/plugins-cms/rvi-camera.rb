Plugin.define do
name "rvi-camera"
authors [
"Andrew Horton",
]
version "0.1"
description "RVI Camera Monitoring System. H.264 IP Web Camera"
matches [
{:text=>'<Meta name="Author" Content="hhdigital">'},
{:text=>'Скачать файл установки OCX&nbsp;&nbsp;&nbsp;<a href="xdview.exe">', :url=>'/login.asp'},
]
end