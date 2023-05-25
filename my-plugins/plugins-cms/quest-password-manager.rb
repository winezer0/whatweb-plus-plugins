Plugin.define do
name "quest-password-manager"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Quest Password Manager enables the end user to reset forgotten passwords securely, allowing administrators to implement stronger password policies while reducing the help desk workload."
website "http://www.quest.com/password-manager/"
dorks [
"Your browser or some settings do not meet the requirements of Password Manager."
]
matches [
{:md5=>"11a756ae488de6e3e31c675ab921e70f", :url=>"/QPM/App_Themes/Default/Images/Controls/Icons/32/icon_Warning.png"},
{:text=>"<div id='Control_ctl00_ctl00_ctl00_ctl00_ContentPlaceHolder_ControlBrowserWarning_BrowserWarningPanel_ButtonPlaceHolder1_ButtonIgnore' class='enable hide  text-color-control button button-text'>"},
{:text=>'<body id="ctl00_ctl00_ctl00_ctl00_Body" class="master master-base-main master-page-home">'},
{:text=>'<div class="text-color-error error-control" style="display:none" id="Account_NotFilled.Textbox">'},
{:text=>'<div id="ctl00_ctl00_ctl00_ctl00_ContentPlaceHolder_PleaseWait_content" class="progressbar"></div>'},
{:text=>'<form name="aspnetForm" method="post" action="index.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="aspnetForm" enctype="multipart/form-data" autocomplate="off">'},
{:text=>'<head><link href="../../App_Themes/Default/Colors.css" type="text/css" rel="stylesheet" /><link href="../../App_Themes/Default/Controls/'},
{:text=>'<input type="hidden" id="GINAPageExpiration" value="1200" />'},
{:text=>'<input type="submit" class="text-color-control button button-text" value="OK" name="" id="button_Ok_control" />'},
{:version=>/<span id="ctl00_ctl00_ctl00_ContentPlaceHolder_ContentPlaceHolder_ContentPlaceHolder_AboutControl_LabelVersion">Full version number: ([^<]+)<\/span>/},
]
end
