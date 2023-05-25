Plugin.define do
name "red-lion-hmi"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Red Lion's G3 operator interface panels give you complete HMI (Human Machine Interface) functionality for PLCs, motor drives and other communications-capable devices. With Ethernet as standard on all G3 models, you can network-enable any serial devices connected to the panel."
website "http://www.redlion.net/"
dorks [
'"Powered by Red Lion." "Display a view of the HMI\'s display and keyboard."'
]
matches [
{:text=>'<p><font face=tahoma size=1>Powered by <a href=http://www.redlion.net>Red Lion</a>.</font></p>'},
{:text=>'<td><font face=tahoma size="2">Display a view of the HMI\'s display and keyboard.&nbsp;&nbsp;&nbsp;</font></td>'},
]
end
