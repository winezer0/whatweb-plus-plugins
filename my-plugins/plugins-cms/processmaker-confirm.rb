Plugin.define do
name "processmaker-confirm"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ProcessMaker - Open source web based workflow software and Business Process Management software."
website "http://www.processmaker.com/"
dorks [
'"User" "Password" "Language" "System Information" "Colosa, Inc. All rights reserved."'
]
matches [
{:text=>'<a href="http://www.processmaker.com" alt="Powered by ProcessMaker - Open Source Workflow & Business Process Management (BPM) Management Software" title="Powered by ProcessMaker" target="_blank">'},
{:text=>'<div class="companyLogo"><img src="/images/processmaker2.logo2.png"/></div>'},
{:text=>'<div class="content"><a href="#" onclick="openInfoPanel();return false;" class="FooterLink">'},
{:text=>'<meta http-equiv="REFRESH" content="0;URL=/sys/en/classic/login/login.html" />'},
{:text=>'Copyright &copy; 2003-2012 <a href="http://www.colosa.com" alt="Colosa, Inc." target="_blank">Colosa, Inc.</a> All rights reserved.'},
{:version=>/<div class="x-pm-footer-text">\s+ProcessMaker Ver\. ([^\s]+)<br\/>/},
]
end
