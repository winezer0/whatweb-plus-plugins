Plugin.define do
name "cdk-connected-website"
authors [
"Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "CDK creates websites for the automotive industry. CDK Connected Store is an eCommerce platform."
website "https://www.cdkglobal.com/"
matches [
{:search=>"headers[X-Nitra-Side]", :regexp=>/./},
{:search=>"headers[set-cookie]", :regexp=>/^nitraside/, :name=>"nitraside cookie"},
{:text=>'src="https://media-cf.assets-cdk.com/', :name=>"scripts from assets-cdk.com"},
]
end
