Plugin.define do
name "softplc-controller"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "All SoftPLC controller CPUs provide the same rich set of features. Every SoftPLC is a high-performance, feature-rich Programmable Automation Controller (PAC), combining the functions of a proprietary PLC with the benefits of both an open architecture design and computer technologies."
website "http://www.softplc.com/products.php"
passive do
m=[]
if @headers["server"].nil?
if @status.to_s =~ /^302$/ and @headers["location"] =~ /\/syswww\/login\.xml/
m << { :name=>"Location Header" }
end
m << { :name=>"SoftPLC Cookie" } if @headers["set-cookie"] =~ /^SoftPLC=-?[\d]+; Path=\//
end
m
end
matches [
{:text=>'                    Classifieds PLUS Script</strong> - ADMIN PANEL</font></p>'},
{:text=>'<!-- --><font style="font-family: Arial, Helvetica, sans-serif;font-size: 12px;font-style: normal;color: #009900;font-weight: bold;">Powered By <a href="http://www.softbizscripts.com/classified-ads-plus-script-features.php" style="font-family: Arial, Helvetica, sans-serif;font-size: 12px;font-style: normal;color: #0099FF;font-weight: normal;" title="Classified Ads Plus PHP Script" target="_blank" >Softbiz Scripts</a></font>'},
]
end