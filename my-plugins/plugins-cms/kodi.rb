Plugin.define do
name "kodi"
authors [
"Andrew Horton",
]
version "0.1"
description "KODI is a media center. It was formerly known as XBMC Media Center."
website "https://kodi.tv/"
matches [
{:name=>"WebInterface version from /addon.xml", :module=>/id="webinterface.default".*[\s]+version="([^"]+)"/, :url=>'/addon.xml'},
{:name=>"XBMC JSON version from /addon.xml", :version=>/^[\s]+<import addon="xbmc.json" version="([^"]+)"/, :url=>'/addon.xml'},
{:name=>"favicon", :md5=>'91b72b23e7f499d6c09cb18c7b1278f1', :url=>'/favicon.ico'},
{:name=>"xbmc.org found in /js/xbmc.launcher.js", :certainty=>25, :text=>'xbmc.org', :url=>'/js/xbmc.launcher.js'},
{:text=>'<link rel="search" href="provider.xml" type="application/opensearchdescription+xml" title="Kodi Library" />'},
{:text=>'<title>Kodi</title>'},
]
end