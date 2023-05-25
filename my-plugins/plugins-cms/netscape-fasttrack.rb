Plugin.define do
name "Netscape-FastTrack"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "This product version has been EOL'd and is beyond its end of support life (EOSL) date. Customers should migrate to a currently supported version of Sun ONE Web Server"
website "https://cds.sun.com/is-bin/INTERSHOP.enfinity/WFS/CDS-CDS_SMI-Site/en_US/-/USD/ViewProductDetail-Start?ProductRef=NSC-FT-2.01C-G-F@CDS-CDS_SMI"
matches [
{:regexp=>/^Netscape-FastTrack/, :search=>"headers[server]"},
{:version=>/^Netscape-FastTrack\/(.+)$/, :search=>"headers[server]"},
]
end
