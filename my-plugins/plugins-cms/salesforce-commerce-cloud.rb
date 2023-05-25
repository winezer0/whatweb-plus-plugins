Plugin.define do
name "salesforce-commerce-cloud"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<[^>]+demandware\.edgesuite/},
{:search=>"all", :text=>'Salesforce Commerce Cloud'},
{:search=>'body', :regexp=>/.demandware\.static./},
{:search=>'headers[server]', :regexp=>/Demandware eCommerce Server/},
]
end