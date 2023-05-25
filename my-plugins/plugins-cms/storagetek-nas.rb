Plugin.define do
name "StorageTek-NAS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "StorageTek Network Attached Storage (NAS) - StorageTek was founded in 1969 by four former IBM engineers: Jesse Awieda, Juan Rodriguez, Thomas S. Kavanagh, Zoltan Herger. StorageTek was puchased in 2005 by Sun Microsystems, Inc which was later purchased by Oracle Corporation in 2010."
website "http://www.oracle.com/technetwork/documentation/oracle-unified-ss-193371.html"
matches [
{:model=>/^StorageTek-HTTPD\/[^\s]+ \(([^\s]+) NAS\)$/, :search=>"headers[server]"},
{:regexp=>/^StorageTek-HTTPD/, :search=>"headers[server]"},
{:url=>"/sedona.jnlp", :text=>'<title>Sun StorageTek NAS OS Web Admin</title>'},
{:version=>/^StorageTek-HTTPD\/([^\s]+) \([^\s]+ NAS\)$/, :search=>"headers[server]"},
]
end
