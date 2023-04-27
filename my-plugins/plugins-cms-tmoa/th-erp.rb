Plugin.define do
name "th-ERP"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ERP application, including point-of-sale (POS), stock (inventory/warehouse), purchase, payables, receivables, general ledger (accounting), payroll, human resource (HR), time tracking, project management. th-ERP is written in PHP and using MySQL."
website "http://sourceforge.net/projects/therp/"
dorks [
'intitle:"thERP - Login" Username Password'
]
matches [
{:text=>"<LINK REL=StyleSheet HREF='../include/therp.css' TYPE='text/css'><script>"},
{:text=>'<title>thERP - Login</title>'},
]
end
