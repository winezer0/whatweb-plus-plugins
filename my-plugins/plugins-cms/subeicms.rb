Plugin.define do
name "subeicms" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'subeicms'},
{:url=>'/App_Js/Common.js', :text=>'Common/WebService.asmx/GetSearchScanningByLogID'},
]
end