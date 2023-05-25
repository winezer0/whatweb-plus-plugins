Plugin.define do
name "Suspended-Webpage"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sometimes web hosts suspend their clients pages. This is often due to a breach a of the TOS or excessive traffic."
matches [
{:text=>'<!-- InstanceBegin template=rwh.dwt codeOutsideHTMLIsLocked=false --><!--Copyright &copy; 2002-2010 by Flux Services, Inc.--><html><head><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><title>Website Unavailable - UltraWebsiteHosting.com</title><META NAME=ROBOTS CONTENT=NOINDEX,NOFOLLOW><LINK REL="SHORTCUT ICON" HREF=favicon.ico><style type="text/css">', :version=>'ultrawebsitehosting.com'},
{:text=>'background-image: url(http://www.ultrawebsitehosting.com/suspended/body-bg.gif);', :version=>'ultrawebsitehosting.com'},
]
end
