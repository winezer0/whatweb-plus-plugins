Plugin.define do
name "rfi-scanner-bot"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "This plugin idenitfies instances of Remote File Include Scanner bots (aka feelscanz.pl, gmjk.pl, FeeLCoMz.pl, rfi.pl) and extracts the command and control servers, channels and passwords."
passive do
m=[]
if @body =~ /^## + RFI Scan & Exploit \(Exploit per engine\)        ##/ or @body =~ /^######################################################/ or @body =~ /^##   perl feelscanz.pl <chan w\/o #> <server> <port> ##/ or @body =~ /##\[ RUTIN SEARCH ENGINE \]##/ or @body =~ /^## + Fixed cryptz command \(v4.5\)/ and @body =~ /^#!\/usr\/bin\/perl/
if @body =~ /^my @servers[\s]*=[\s]*\(([^\)]+)/
modules=@body.scan(/^my @servers[\s]*=[\s]*\(([^\)]+)/)
m << {:module=>modules}
end
if @body =~ /^my @ports[\s]*=[\s]*\(([^\)]+)/
modules=@body.scan(/^my @ports[\s]*=[\s]*\(([^\)]+)/)
m << {:module=>modules}
elsif @body =~ /^[\s]+port[\s]*=>[\s]*([^\r^\n]+)/
modules=@body.scan(/^[\s]+port[\s]*=>[\s]*([^\r^\n]+)/)
m << {:module=>modules}
end
if @body =~ /^[\s]+chan[\s]*=>[\s]*([^\r^\n]+)/
modules=@body.scan(/^[\s]+chan[\s]*=>[\s]*([^\r^\n]+)/)
m << {:module=>modules}
end
if @body =~ /^[\s]*pass[\s]*=>[\s]*([^,^\r^\n]+)/
accounts=@body.scan(/^[\s]*pass[\s]*=>[\s]*([^,^\r^\n]+)/)
m << {:account=>accounts}
end
if @body =~ /^my \$versi[\s]*=[\s]*"([^\"]+)/
version=@body.scan(/^my \$versi[\s]*=[\s]*"([^\"]+)/)
m << {:version=>version}
end
end
m
end
matches [
{:regexp=>/	<font size=1><a href="http:\/\/www.w3matter.com">Powered by Revsense &trade;<\/a> &copy; [0-9]{4} W3matter LLC<\/font>/},
{:regexp=>/	<font size=1><a>Powered by Revsense &trade;<\/a> &copy; [0-9]{4} W3matter LLC<\/font>/},
{:text=>'				<li><a href="http://www.revsense.com.au/"><strong>RevSense</strong> - Powered by RevSense Ads</a></li>'},
{:text=>'	<!-- You cannot remove this powered by link without receiving permission from W3matter.com -->'},
]
end