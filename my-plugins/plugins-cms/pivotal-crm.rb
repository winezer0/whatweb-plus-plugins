Plugin.define do
name "Pivotal-CRM"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Pivotal CRM is a customer relationship management (CRM) software system offered by CDC Software."
website "http://www.cdcsoftware.com/en/PivotalCRM.aspx"
dorks [
'g_PORTAL_TITLE'
]
matches [
{:ghdb=>'filetype:asp inurl:"xmlloader.asp" "var g_LDSTRING_HEADER_ERROR_CLIENT_ERROR ="'},
{:text=>'&lt;script language=&quot;javascript&quot; src=&quot;javascript/utils.js&quot;&gt;&lt;/script&gt;&lt;script language=&quot;javascript&quot; src=&quot;javascript/navigation.js&quot;&gt;&lt;/script&gt;&lt;script language=&quot;javascript&quot;&gt;'},
{:text=>'<frame name="hidden" src="xmlloader.asp?type=portal" marginwidth="0" marginheight="0" scrolling="no" noresize>'},
{:text=>'<frame name="hidden" title="Hidden" src="xmlloader.asp?type=portal" marginwidth="0" marginheight="0" scrolling="no" noresize>'},
]
end
