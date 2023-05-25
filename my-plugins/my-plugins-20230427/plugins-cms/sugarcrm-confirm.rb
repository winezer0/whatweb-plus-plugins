Plugin.define do
name "sugarcrm-confirm"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Commercial open source customer relationship management (CRM). CRM software for sales force automation and customer support deployed on demand or on site."
website "http://www.sugarcrm.com/crm/"
dorks [
'"Welcome to" intitle:SugarCRM "SugarCRM Inc. The Program is provided AS IS, without warranty. Licensed under AGPLv3."'
]
matches [
{:module=>/<script type="text\/javascript">[\s]+<!--[\s]+SUGAR\.themes\.theme_name      = '([^']+)';[\s]+SUGAR\.themes\.theme_ie6compat = /},
{:string=>/\* SugarCRM is a customer relationship management program developed by[\s]+ \* SugarCRM, Inc\. Copyright \(C\) 2004-([\d]{4}) SugarCRM Inc\./},
{:text=>"<h3 style='color:red'>Possible Cross Site Request Forgery (XSRF) Attack Detected</h3>"},
{:text=>"<img style='margin-top: 2px' border='0' width='106' height='23' src='include/images/poweredby_sugarcrm.png' alt='Powered By SugarCRM'>"},
{:text=>"<script>var module_sugar_grp1 = 'Users';</script><script>var action_sugar_grp1 = 'Login';</script><script>jscal_today"},
{:text=>'<span>|</span>    <a href=" javascript:void window.open(\'http://support.sugarcrm.com\')">Support</a>'},
]
end
