Plugin.define do
name "Zoom"
authors [
'bcoles', 
]
version "0.1"
description "Zoom is the leader in modern enterprise video communications, with an easy, reliable cloud platform for video and audio conferencing, chat, and webinars across mobile, desktop, and room systems."
website "https://zoom.us/"
dorks [
'inurl:zoom.us intitle:"Video Conferencing, Web Conferencing, Online Meetings, Screen Sharing - Zoom"'
]

passive do
m = []
return m unless @base_uri.to_s =~ %r{^https://[^\s^/]+?\.zoom\.us}
if @body =~ %r{<title>Video Conferencing, Web Conferencing, Online Meetings, Screen Sharing - Zoom</title>}
m << { :text=>'<title>Video Conferencing, Web Conferencing, Online Meetings, Screen Sharing - Zoom</title>' }
end
organisation = @body.to_s.scan(%r{<img src="[^"]*/account/branding.* alt="([^"]+)?"}).flatten.first
if organisation and organisation != "Zoom Logo"
m << { :string=>organisation }
end
m
end
end
