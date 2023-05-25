Plugin.define do
name "barracuda"
authors [
"winezero",
]
version "0.1"
matches [
{:mmh3=>'1436966696'},
{:search=>"all", :text=>'Barracuda'},
{:search=>"headers", :text=>'BarracudaHTTP'},
{:text=>'/cgi-mod/header_logo.cgi'},
{:text=>'http://www.barracudanetworks.com?a=bsf_product" class="transbutton'},
]
end