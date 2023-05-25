Plugin.define do
name "TMW-Imaging"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TMW Imaging - Document management system"
website "http://www.tmwsystems.com/imaging"
matches [
{:search=>"headers[set-cookie]", :regexp=>/TMWImagingSession=[^;]+/},
{:text=>'<!-- HTML Library is $Id: TmwHTML.pm'},
{:text=>'<!-- TMW Document Imaging -->'},
{:url=>"/cgi-bin/img-system-status.pl?server", :version=>/<TD>TMW Imaging Version<\/TD>\s+<TD>([^\s^<]+)<\/TD>/},
]
end
