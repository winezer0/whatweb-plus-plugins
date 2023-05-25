Plugin.define do
name "SmartCDS"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton",
]
version "0.2"
description "SmartCDS (Content Delivery Server) hardware [Japanese]"
website "http://www.globaldawin.com/product/smartcds.php3"
matches [
{:regexp=>/^smartcds/, :search=>"headers[server]"},
{:string=>/^(.*)$/, :search=>"headers[x-smartcds-error]"},
{:text=>'<img border=0 src="http://www.globaldawin.com/capcds/refresh.gif" width="13" height="16"'},
{:version=>/^Version:([^\s]+)$/, :search=>"headers[smartcds]"},
{:version=>/^smartcds\/([^\s]+)/, :search=>"headers[server]"},
]
end