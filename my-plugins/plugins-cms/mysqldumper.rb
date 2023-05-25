Plugin.define do
name "mysqldumper"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MySQLDumper is a free PHP/Perl script to backup your important MySQL-Data safe and secure and restore them in the case of an emergency."
website "http://www.mysqldumper.net/"
dorks [
'inurl:sql_statement inurl:sql.php intitle:MySqlDumper'
]
matches [
{:text=>'<a title="Select Database / Datebase functions / Import - Export " href="sql.php?db=&amp;dbid=0&amp;context=3'},
{:text=>'<select class="SQLCombo" name="tablecombo" onchange="this.form.sqltextarea.value=this.options[this.selectedIndex].value;this.form.execsql.click();">'},
{:text=>'align="center">The execution of SQL Statements can manipulate data. TAKE CARE! The Authors don\'t accept any liability for damaged or lost data.</div>'},
]
passive do
m=[]
m << { :name=>"MySQLDumper Cookie" } if @headers["set-cookie"] =~ /MySQLDumper=[a-z\d]{16,32}/
m << { :name=>"WWW-Authenticate realm" } if @headers["www-authenticate"] =~ /^Basic realm="MySQLDumper"$/
m
end
end
