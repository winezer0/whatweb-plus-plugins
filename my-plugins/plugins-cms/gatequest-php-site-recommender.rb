Plugin.define do
name "gatequest-php-site-recommender"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "GateQuest php Site Recommender is a simple recommendation software through which visitors can recommend your websites to a number of other recipients. Users are provided with error checking, recipient notifications and validation functions for facilitating sent messages. This flat file script is independent of database."
website "http://www.vclcomponents.com/PHP/Site_Recommendation/GateQuest_php_Site_Recommender-info.html"
dorks [
'intitle:"GateQuest php Site Recommender - Include Method" "Recipient Email Addresses"'
]
matches [
{:certainty=>25, :text=>'<link rel="stylesheet" href="recommend.css" type="text/css">'},
{:name=>'HTML Tag Pattern', :tagpattern=>'!doctype,html,head,title,/title,link,/head,body,table,tr,td,a,,/a,/td,/tr,tr,td,table,form,tr,td,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,span,/span,br,br,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,span,/span,br,textarea,/textarea,/td,/tr,tr,td,table,tr,td,input,/td,td,/td,td,input,/td,/tr,/table,/td,/tr,/form,/table,/td,/tr,/table,/body,/html'},
{:name=>'HTML Tag Pattern', :tagpattern=>'!doctype,html,head,title,/title,link,/head,body,table,tr,td,a,/a,/td,/tr,tr,td,table,form,tr,td,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,span,/span,br,br,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,span,/span,br,textarea,/textarea,/td,/tr,tr,td,table,tr,td,input,/td,td,/td,td,input,/td,/tr,/table,/td,/tr,/form,/table,/td,/tr,/table,/body,/html'},
{:name=>'HTML Tag Pattern', :tagpattern=>'!doctype,html,head,title,/title,link,/head,body,table,tr,td,a,img,/a,/td,/tr,tr,td,table,form,tr,td,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,span,/span,br,br,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,/td,td,input,/td,/tr,tr,td,span,/span,br,textarea,/textarea,/td,/tr,tr,td,table,tr,td,input,/td,td,/td,td,input,/td,/tr,/table,/td,/tr,/form,/table,/td,/tr,/table,/body,/html'},
{:text=>'<title>GateQuest php Site Recommender - Include Method</title>'},
{:text=>'GateQuest'},
]
end
