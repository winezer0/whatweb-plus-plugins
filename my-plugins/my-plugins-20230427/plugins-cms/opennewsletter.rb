Plugin.define do
name "opennewsletter"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open source mailing list manager with builds from Self Exile, NetMeans.Net and Quadro.Net"
dorks [
'"This is a Free & Open Source mailing list manager" -dork'
]
matches [
{:text=>'This is a <a href=fsw.php>Free</a> & <a href=osd.php>Open Source</a> mailing list manager developed by <a href=feedback.php>Self Exile</a> and distributed under the <a href=gpl.php>GPL</a>.', :string=>"Build: Self Exile"},
{:text=>'This is a <a href=fsw.php>Free</a> & <a href=osd.php>Open Source</a> mailing list manager developed by <a href=selfexile.php>Self Exile</a> and distributed under the <a href=gpl.php>GPL</a>.', :string=>"Build: Self Exile"},
{:text=>'This is a Free & Open Source mailing list manager developed by <a href="http://netmeans.net">NetMeans.Net</a> and distributed under the LGPL license. This software is based on the OpenNewsletter project by <a href="http://www.selfexile.com" target="_blank">Self Exile</a>.', :string=>"Build: NetMeans.Net"},
{:text=>'This is a Free & Open Source mailing list manager developed by <a href="http://www.quadronet.net">Quadro Net</a> and distributed under the LGPL license. This software is based on the OpenNewsletter project by <a href="http://www.selfexile.com" target="_blank">Self Exile</a> and NmnNewsletter by <a href="http://netmeans.net">NetMeans.Net</a>.', :string=>"Build: Quadro.Net"},
]
end
