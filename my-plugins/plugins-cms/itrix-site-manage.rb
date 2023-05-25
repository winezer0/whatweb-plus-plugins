Plugin.define do
name "itrix-site-manage"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Website management, e-commerce and e-marketing solution that delivers extreme value in performance, functionality, and ease-of-use."
website "http://www.bitrixsoft.com/"
matches [
{:search=>"headers[b-powered-by]", :name=>"B-Powered-By Header", :regexp=>/^Bitrix SM \(/},
{:search=>"headers[b-powered-by]", :name=>"B-Powered-By Header", :version=>/^Bitrix SM\/([\d\.]+) \(/},
{:search=>"headers[p3p]", :name=>"P3P Header", :regexp=>/^policyref="\/bitrix\/p3p\.xml", CP="NON DSP COR CUR ADM DEV PSA PSD OUR UNR BUS UNI COM NAV INT DEM STA"$/},
{:search=>"headers[set-cookie]", :name=>"BITRIX_SM_BANNERS Cookie", :regexp=>/BITRIX_SM_BANNERS=/},
{:search=>"headers[set-cookie]", :name=>"BITRIX_SM_GUEST_ID Cookie", :regexp=>/BITRIX_SM_GUEST_ID=[\d]+;/},
{:search=>"headers[set-cookie]", :name=>"BITRIX_SM_LAST_VISIT Cookie", :regexp=>/BITRIX_SM_LAST_VISIT=/},
{:search=>"headers[set-cookie]", :name=>"BITRIX_SM_SALE_UID Cookie", :regexp=>/BITRIX_SM_SALE_UID=[\d]+;/},
{:search=>"headers[x-powered-cms]", :name=>"X-Powered-CMS Header", :regexp=>/^Bitrix Site Manager \(/},
]
end
