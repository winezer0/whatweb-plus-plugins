Plugin.define do
name "ShoreTel-Converged-Conferencing"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ShoreTel Converged Conferencing"
website "http://www.shoretel.com/"
matches [
{:certainty=>75, :url=>"/ics?action=display&display=opener", :text=>'<DIV style="visibility:hidden;display:none" id="TEXT_OPENING_PRODUCT">Opening *brand_product_name*</DIV>'},
{:certainty=>75, :url=>"/ics?action=display&display=opener", :text=>'<script src="/ics?action=get_branding_js" charset="UTF-8"></script>'},
{:url=>"/branding/default/ENG-US.js", :md5=>"560374321ea7b2a57e5cac1df6611e36"},
{:url=>"/branding/default/ENG-US.js", :text=>'this.product_name_long = "ShoreTel Converged Conferencing";'},
]
end
