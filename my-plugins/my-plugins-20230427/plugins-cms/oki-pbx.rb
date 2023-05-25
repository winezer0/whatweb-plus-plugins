Plugin.define do
name "oki-pbx"
authors [
"Andrew Horton",

]
version "0.2"
description "OKI PBX (phone exchange) http://www.oki.com/en/iptel/products/mxsx/maintenance.html"
matches [
{:text=>'<APPLET CODE="DavisBar.class" ARCHIVE="ipstage.jar"'},
{:text=>'<PARAM NAME="systype"    value="OKI">'},
{:text=>'<title>IPstageMaintenanceConsole(PBX)</title>'},
]
end
