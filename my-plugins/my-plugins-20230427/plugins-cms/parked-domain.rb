Plugin.define do
name "Parked-Domain"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin recognises web pages for common web hosts who allow domain parking."
matches [
{:text=>"<script language='javascript' src='https://a12.alphagodaddy.com/hosting_ads/gd01.js'></script>", :string=>'GoDaddy.com'},
{:text=>"<title>This Domain is Parked at Domainmasters.co.ke</title>", :string=>"Domainmasters.co.ke"},
{:text=>"document.write('<a href=\"mailto:info' + '@' + 'servlet.com\">' + 'contact us</a>');", :string=>"Servlet.com"},
{:text=>'<TITLE>This domain is parked at config.com Internet services provider - commercial and consumer Internet services </TITLE>', :string=>'config.com'},
{:text=>'<a href="http://www.enlightenhosting.com/services/domain/freeparking.aspx">Parking your domain</a> is a free service provided by <a href="http://www.enlightenhosting.com/">Enlighten Hosting</a>.</p>', :string=>'Enlighten Hosting.com'},
{:text=>'<div class="parkblurb">This domain is parked for free at Sitelutions.  The domain name <b>', :string=>'Sitelutions.com'},
{:text=>'<img src="http://images-pw.secureserver.net/images/log_gd_3.gif" usemap="#lmap" border="0" alt="This web page is parked FREE, courtesy of GoDaddy.com" ></a></div>', :string=>'GoDaddy.com'},
{:text=>'<img src="http://www.omegapointdesign.com/domain_parked.jpg" alt="This domain is parked" border="0" /></div>', :string=>'Omega Point Design.com'},
{:text=>'<title>Domain Temporarily Parked with Dreamhost.com!</title>', :string=>'Dreamhost.com'},
{:text=>'<title>Enlighten Hosting - This domain is currently parked</title>', :string=>'Enlighten Hosting.com'},
{:text=>'<title>This Domain is Parked at Dot Com Today</title>', :string=>'Dot Com Today.com'},
{:text=>'<title>This Domain is Parked at Servlet.com</title>', :string=>'Servlet.com'},
{:text=>'<title>This domain is currently parked at WebOlli Hosting Solutions - www.WebOlli.com</title>', :string=>"WebOlli.com"},
{:text=>'<title>This domain is parked by IberSoluciones.com</title>', :string=>'IberSoluciones.com'},
{:text=>'<title>This domain is parked by The Good Geeks / Geek Media</title>', :string=>'The Good Geeks.com'},
{:text=>'<title>This domain is parked for free with web.com</title>', :string=>'Web.com'},
{:text=>'<title>This domain is parked with eHost.co.za</title>', :string=>"eHost.co.za"},
]
end
