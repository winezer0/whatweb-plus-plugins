Plugin.define do
name "Mahara"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Mahara is an open source e-portfolio system"
website "http://mahara.org/"
dorks [
'"powered by mahara" inurl:"about.php" intitle:"About"'
]
matches [
{:text=>'<!-- This site is powered by Mahara, an Open Source'},
{:text=>'<!-- there is a div id="performance-info" wrapping this -->'},
{:text=>'<div id="powered-by"><a href="http://mahara.org/"><img src="'},
{:text=>'<script type="text/javascript">var strings = {"namedfieldempty":"The required field \"%s\" is empty","processing":"Processing","requiredfieldempty":"A required field is empty","unknownerror":"An unknown error occurred (0x20f91a0)",'},
{:url=>"/favicon.ico",:allhash=>"5f8b52715c08dfc7826dad181c71dec8"},
]
end
