Plugin.define do
name "ORCA-Platform"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Welcome to ORCA Websites... We specialise in designing Professional & Affordable Websites for small to medium sized businesses across the UK."
website "http://www.orcawebsites.com/"
dorks [
'"powered by Orca Websites"'
]
matches [
{:text=>'                <p class="orca">Powered By <a href="http://www.orcawebsites.com/" title="ORCA Websites">ORCA Websites</a></p>'},
{:text=>'    <!-- Macro Initialisation - Don\'t Touch! -->'},
{:text=>'    <meta name="author" content="ORCA Websites"/>'},
{:text=>'    <meta name="generator" content="ORCA Platform - http://www.orcawebsites.com"/>'},
{:text=>'<a href="http://www.orcawebsites.com/" title="Powered By ORCA Websites">Powered By ORCA Websites</a>'},
]
end
