Plugin.define do
name "webbackdoor"
authors [
"Aung Khant, http://yehg.net",

]
version "0.1"
description "Detect common web doors (asp,jsp,php,jsp,pl,cgi)  using fuzz-db list and others"
matches [
{:string=>'CmdServlet',:url=>'CmdServlet',:tagpattern=>'html,body,hr,p,form,input,input,/form,hr,/pre,/body,/html'},
{:string=>'ListServlet',:url=>'ListServlet',:regexp=>/<HTML>\n<HEAD>\n<TITLE>Directory Listing<\/TITLE>\n<\/HEAD>\n<BODY>\n<FONT Face=\"Courier New, Helvetica\" Color=\"Black\">\n/},
{:string=>'UpServlet',:url=>'UpServlet',:regexp=>/<html><body><br><form method="POST" action="" enctype="multipart\/form-data">UPLOAD <input type="file" name="file" size="60"><input type="submit" value="Upload">/},
{:string=>'UpServlet',:url=>'UpServlet',:tagpattern=>'html,body,br,form,input,input,/form,/body,/html'},
{:string=>'Woan backdoor kit collection',:text=>"<!-- Created by Mark Woan (http://www.woany.co.uk) -->"},
{:string=>'backdoor kit collection',:text=>"<!--\n\n_KIT\n"},
{:string=>'browser.jsp',:url=>'browser.jsp',:regexp=>/<input title="Launch command in current directory" type="Submit" class="button" name="Submit" value="Launch command">|<small>jsp File Browser version/},
{:string=>'cfexec.cfm',:url=>'cfexec.cfm',:regexp=>/Notes:<br><br>(\r\n|\n)<ul>(\r\n|\n)<li>Prefix DOS commands with/},
{:string=>'cmd.cfm',:url=>'cmd.cfm',:regexp=>/<table>(\r\n|\n)<form method="POST" action="">(\r\n|\n) <tr>(\r\n|\n)  <td>Command:<\/td>(\r\n|\n)  <td> < input type=text name="cmd"/},
{:string=>'cmd.cgi',:url=>'cmd.cgi',:regexp=>/<input type="text" name="cmd">(\r\n|\n)<input type="submit" value="Send">/},
{:string=>'cmd.jsp',:url=>'cmd.jsp',:regexp=>/<FORM METHOD="GET" NAME="myform" ACTION="">(\r\n|\n)<INPUT TYPE="text" NAME="cmd">(\r\n|\n)<INPUT TYPE="submit" VALUE="Send">/},
{:string=>'cmd.jsp',:url=>'cmd.jsp',:tagpattern=>"html,body,form,input,input,/form,pre,/pre,/body,/html"},
{:string=>'cmd.pl',:url=>'cmd.pl',:regexp=>/<input type="submit" value="Run">(\r\n|\n)<\/form>(\r\n|\n)<pre>/},
{:string=>'cmd.pl',:url=>'cmd.pl',:tagpattern=>'html,body,form,input,input,/form,pre,/pre'},
{:string=>'cmd_win32.jsp',:url=>'cmd_win32.jsp',:regexp=>/<HTML><BODY>(\r\n|\n)<FORM METHOD="POST" NAME="myform" ACTION="">(\r\n|\n)<INPUT TYPE="text" NAME="cmd">(\r\n|\n)<INPUT TYPE="submit" VALUE="Send">(\r\n|\n)<\/FORM>(\r\n|\n)<pre>/},
{:string=>'cmdexe.cgi',:url=>'cmdexe.cgi',:regexp=>/<input type="text" name="cmd">(\r\n|\n)<input type="submit" value="Send">/},
{:string=>'cmdjsp.jsp',:url=>'cmdjsp.jsp',:regexp=>/<FORM METHOD=GET ACTION='cmdjsp.jsp'>(\r\n|\n)<INPUT name='cmd' type=text>(\r\n|\n)<INPUT type=submit value='Run'>(\r\n|\n)<\/FORM>/},
{:string=>'jsp-reverse.jsp',:regexp=>/<h1>JSP Backdoor Reverse Shell<\/h1>/},
{:string=>'jsp-reverse.jsp',:url=>'jsp-reverse.jsp',:regexp=>/<form method="post">(\r\n|\n)IP Address(\r\n|\n)<input type="text" name="ipaddress" size=30>(\r\n|\n)Port(\r\n|\n)<input type="text" name="port" size=10>(\r\n|\n)<input type="submit" name="Connect" value="Connect">(\r\n|\n)/},
{:string=>'jsp-reverse.jsp',:url=>'jsp-reverse.jsp',:regexp=>/<h1>JSP Backdoor Reverse Shell<\/h1>/},
{:string=>'list.jsp',:url=>'list.jsp',:regexp=>/<HTML><BODY>(\r\n|\n)\t<FORM METHOD="POST" NAME="myform" ACTION="">(\r\n|\n)\t<INPUT TYPE="text" NAME="file">(\r\n|\n)\t<INPUT TYPE="submit" VALUE="Send">(\r\n|\n)\t<\/FORM>/},
{:string=>'list.pl',:url=>'list.pl',:regexp=>/<input type="submit" value="List">(\r\n|\n)<\/form>(\r\n|\n)Directory/},
{:string=>'michaeldaw.org backdoor collection',:text=>"<!--    http://michaeldaw.org "},
{:string=>'michaeldaw.org backdoor collection',:text=>"by DK (http://michaeldaw.org) -->"},
{:string=>'perlcmd.cgi',:text=>'# <!--    http://michaeldaw.org   2006    -->'},
{:string=>'perlcmd.cgi',:text=>'<!-- Simple CGI backdoor by DK (http://michaeldaw.org) -->'},
{:string=>'perlcmd.cgi',:url=>'perlcmd.cgi',:text=>'# <!--    http://michaeldaw.org   2006    -->'},
{:string=>'perlcmd.cgi',:url=>'perlcmd.cgi',:text=>'<!-- Simple CGI backdoor by DK (http://michaeldaw.org) -->'},
{:string=>'up.jsp',:url=>'up.jsp',:regexp=>/<html>(\r\n|\n)<form name="test" method="post" action="" enctype="multipart\/form-data">(\r\n|\n)<input type="File" name="fichero">(\r\n|\n)<input type="Submit" value="Upload" name="Submit">(\r\n|\n)<\/form>/},
{:string=>'up.pl',:text=>'<a href="http://www.muquit.com/muquit/">Muhammad A Muquit'},
{:string=>'up.pl',:url=>'up.pl',:text=>'<a href="http://www.muquit.com/muquit/">Muhammad A Muquit'},
{:string=>'up_win32.jsp',:url=>'up_win32.jsp',:regexp=>/<html>(\r\n|\n)<form name="test" method="post" action="" enctype="multipart\/form-data">(\r\n|\n)<input type="File" name="fichero">(\r\n|\n)<input type="Submit" value="Upload" name="Submit">(\r\n|\n)<\/form>(\r\n|\n)<\/html>/},
]
end
