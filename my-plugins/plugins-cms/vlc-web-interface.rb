Plugin.define do
name "VLC-Web-Interface"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web interface for VideoLAN media player"
website "http://www.videolan.org/"
dorks [
'intitle:"VLC media player - Web Interface" "VLM interface"'
]
matches [
{:certainty=>75, :text=>'<title>VLC media player - Web Interface - Mosaic Wizard</title>'},
{:certainty=>75, :text=>'<title>VLC media player - Web Interface - VLM</title>'},
{:certainty=>75, :text=>'<title>VLC media player - Web Interface with Flash Viewer</title>'},
{:certainty=>75, :text=>'<title>VLC media player - Web Interface</title>'},
{:text=>'<!-- do we need to browse in order to setup a mosaic ? for the background image maybe ... -->'},
{:text=>'<input type="checkbox" id="vlm_schedule_repeat" onchange="toggle_schedule_repeat();update_vlm_add_schedule();" />'},
{:text=>'<input type="text" name="sout_mrl" id="sout_mrl" size="60" onkeypress="if( event.keyCode == 13 ) vlm_output_change();"/>'},
]
end
