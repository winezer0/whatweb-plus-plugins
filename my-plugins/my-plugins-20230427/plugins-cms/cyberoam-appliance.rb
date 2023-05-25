Plugin.define do
name "Cyberoam-Appliance"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Cyberoam UTM appliances integrate multiple security features like Firewall, VPN, Intrusion Prevention System, Anti-Virus & Anti-Spyware, Anti-Spam, Web Filtering, Layer 7 Visibility & Control, Bandwidth Management, Multiple Link Management, and more on a single platform."
website "http://www.cyberoam.com/"
dorks [
'"To use cyberoam console , enable JavaScript by changing your browser options."'
]
matches [
{:text=>'<!-- PUT THE LOGIC OF YOUR PAGE HERE -->'},
{:text=>'<INPUT TYPE=HIDDEN NAME="js_autodetect_results" VALUE="SMPREF_JS_OFF">'},
{:text=>'<noscript><font class="arial12whitebold">JavaScript must be enabled in order for you to use cyberoam admin console.</font></noscript><br>'},
{:text=>'<td align="right" class="arial12whitebold">Log on to:&nbsp; </td>'},
{:url=>"/corporate/webpages/sessionexpired.jsp", :version=>/<font face="arial" size=2 color=white>([^<]+ build [^<]+)<\/font>/},
{:url=>"/images/loginbox_left_logo.jpg", :md5=>"ecb82a4554f2ef5eefd06040cdae9872"},
{:url=>"/images/session_ex.jpg", :md5=>"7241a011a6057cdb723eccbf178b0e3a"},
]
end
