Plugin.define do
name "phpdealerlocator"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpDealerLocator is a full featured zip code locator software - Requires: PHP and MySQL"
website "http://www.yourphppro.com/version/en-us/content/page_4.html"
dorks [
'inurl:Locator/record.php?Dealer_ID'
]
matches [
{:text=>"</td></tr></table><b>Database error:</b> Invalid SQL: SELECT Cat_Text FROM ( dealer_category_matrix RIGHT JOIN dealers ON dealers.Dealer_ID = dealer_category_matrix.DCM_Dealer_ID ) RIGHT JOIN category ON dealer_category_matrix.DCM_Cat_ID = category.Cat_ID WHERE Dealer_ID =  AND (Dealer_Publish = 'Y') AND (Dealer_Approved = 'Y')<br>"},
{:text=>'<select class="PythonSelect" name="s_Dealer_Radius">'},
{:text=>'<td><label for="Dealer_Radiuss_Dealer_Zip">Zipcode/Postal Code</label></td>'},
]
end
