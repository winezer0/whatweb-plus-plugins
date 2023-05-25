Plugin.define do
name "Truition"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CDC eCommerce - On Demand eCommerce and Online Auction Software - formerly Truition"
website "http://www.truition.com/"
dorks [
'"powered by Truition" inurl:ExecMacro inurl:cgi-bin'
]
matches [
{:ghdb=>'inurl:"/cgi-bin/ncommerce3/ExecMacro/static/" filetype:d2w'},
{:text=>"<!--Logon Information-faq answers below-->"},
{:text=>'<A HREF="/cgi-bin/ncommerce3/ExecMacro/search.d2w/report?wl=151">Search</A>'},
{:text=>'<li>DTWF050E: Net.Data is unable to locate the HTML block specification in the URL.'},
{:text=>'<li>DTWP001E: Net.Data is unable to locate the macro file'},
{:text=>'location.href = "/cgi-bin/ncommerce3/ExecMacro/static/'},
]
end
