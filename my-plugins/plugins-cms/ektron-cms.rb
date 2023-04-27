Plugin.define do
name "Ektron-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Bhavin Senjaliya", 

]
version "0.2"
description "Ektron provides web content management and social software. Ektron's primary product is CMS400.NET, which is built on the Microsoft .NET Framework."
website "http://www.ektron.com/"
dorks [
'inurl:"/workarea/java/" "ektron"'
]
matches [
{:search=>"headers", :text=>'EktGUID='},
{:search=>"headers[set-cookie]", :regexp=>/EkAnalytics/, :name=>"EkAnalytics cookie"},
{:search=>"headers[set-cookie]", :regexp=>/EktGUID=[a-f\d]{8}-[a-f\d]{4}-[a-f\d]{4}-[a-f\d]{4}-[a-f\d]{12}; expires=/},
{:search=>"headers[set-cookie]", :regexp=>/ecm=user_id=[\d]+&isMembershipUser=[\d]+&site_id=&username=&new_site=[^&]+&unique_id=[\d]+&site_preview=[\d]+&langvalue=[\d]+&DefaultLanguage=[\d]+/},
{:text=>'/java/ektron.js'},
{:text=>'<script id="EktronJS" type="text/javascript" src="/WorkArea/java/ektron.js">'},
{:text=>'<script id="EktronModalJS" type="text/javascript" src="/WorkArea/java/plugins/modal/ektron.modal.js">'},
{:text=>'<script id="EktronRegisteredJs" type="text/javascript" src="/workarea/java/ektronJs.ashx?id='},
]
end
