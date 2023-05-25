Plugin.define do
name "Octopussy"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Perl/XML Logs Analyzer, Alerter & Reporter."
website "http://www.8pussy.org/"
dorks [
'intitle:"Octopussy Login"'
]
matches [
{:search=>"all", :text=>'Octopussy'},
{:text=>'<img border="0" src="IMG/octo_login1.png" alt="Octopussy Logo"></td>'},
{:text=>'<input type="submit" name="submit" value="Connect to Octopussy"></td>'},
{:text=>'<link rel="icon" type="image/gif" href="IMG/octopussy.gif">'},
{:text=>'<title>Octopussy Login</title>'},
{:version=>/<td class="box" align="center" >Octopussy ([^\s^<]+)<\/td>/},
]
end