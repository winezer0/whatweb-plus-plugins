Plugin.define do
name "EMC-Documentum-Webtop"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "EMC Documentum Webtop is a browser-based interface that provides access to the EMC Documentum repository and content management services."
website "http://www.emc.com/products/detail/software2/webtop.htm"
dorks [
'"Login Name" Repository Webtop intitle:login inurl:component'
]
matches [
{:certainty=>75, :text=>"<body  marginwidth='0' topmargin='40' bottommargin='0' class='contentBackground' leftmargin='0' rightmargin='0' marginheight='40'>"},
{:regexp=>/<script type="text\/javascript" src='\/webtop\/index\.js'><\/script>[\s]+<\/head>[\s]+<body onload='doRedirect\("\/component\/main"\)'>[\s]+<\/body>[\s]+<\/html>/},
{:text=>"<select name='Login_docbase_0' id='DocbaseName' title=\"Repository\" size='0' class=defaultDropdownListStyle onchange='setKeys(event);"},
{:text=>"<td><input type='text' name='MyLogin_username_0' id='LoginUsername' title=\"Login Name\" size='40' onkeypress=\"handleKeyPress(event)\"></td>"},
{:text=>'/webtop/index.js'},
{:text=>'/webtop/webtop/theme/documentum/css/webtop.css'},
{:text=>'<script type="text/javascript">var g_virtualRoot = "/webtop";</script>'},
{:text=>'<td nowrap class="logintitletext" height="23" valign="top"><span  class=\'dialogTitle\'>Webtop Login'},
{:text=>'<td scope="row" align=\'right\' class="fieldlabel" height="30"><span  class=\'defaultLabelStyle\'>Repository</span></td><td class="defaultcolumnspacer">:&nbsp;</td>'},
{:version=>/<div id="logo"><span  class='defaultLabelStyle'>Webtop<\/span>[\s]?&nbsp;<span  class='dialogTitleVersion'>([^<]+)<\/span>/},
]
end
