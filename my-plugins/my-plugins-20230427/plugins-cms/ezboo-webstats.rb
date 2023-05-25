Plugin.define do
name "ezBOO-WebStats"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ezBOO WebStats is a high level statistical tool for web sites monitoring."
website "http://www.ezboo.com/softs/"
dorks [
'"Administrator Panel" intitle:"ezBOO WebStats"'
]
matches [
{:certainty=>75, :ghdb=>'+"Administrator Panel" +intitle:"ezBOO WebStats"'},
{:text=>'<div align="center" class="titre"><font color="#FFFFFF">&gt;&gt; Administrator Panel        &lt;&lt; </font></div>'},
{:text=>'<td height="60" valign="top" align="center"><img src="image/logo_ez1.gif" border="0"></td>'},
{:text=>'<title>ezBOO WebStats</title>'},
]
end
