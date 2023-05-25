Plugin.define do
name "trs-inforadar"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'trs_inforadar'},
{:url=>'/inforadar/jsp/cis4/js/common/CTRSHTMLTr.js', :text=>'TRSHTMLTr_isInvalidElement'},
]
end