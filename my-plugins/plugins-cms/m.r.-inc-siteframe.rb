Plugin.define do
name "m.r.-inc-siteframe"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'M.R. Inc SiteFrame'},
{:search=>'headers[powered-by]', :regexp=>/M\.R\. Inc SiteFrame/},
]
end