Plugin.define do
name "Orbis-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Orbis CMS is a simple and stylish management solution for small websites."
dorks [
'"powered by Orbis CMS" intitle:"Orbis CMS > Login"'
]
matches [
{:text=>'<!-- Give feedback if user enters incorrect password (GET value "e=2) or logged out (GET value "e=3") -->'},
{:text=>'<div id="login_poweredby">Powered by Orbis CMS</div>'},
{:text=>'<meta name="description" content="Orbis CMS is a simple and stylish management solution for small websites." />'},
{:text=>'<title>Orbis CMS &gt; Login</title>'},
]
end
