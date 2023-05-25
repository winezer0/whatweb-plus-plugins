Plugin.define do
name "ioncube-loader"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ionCube Loader handles the reading and execution of ionCube encoded PHP files at run time."
website "http://www.ioncube.com/loaders.php"
dorks [
'inurl:"loader-wizard.php" ext:php intitle:"ionCube Loader Wizard"'
]
matches [
{:certainty=>75, :ghdb=>'inurl:"loader-wizard.php" filetype:php intitle:"ionCube Loader Wizard"'},
{:module=>/<div id="footer">Copyright ionCube Ltd\. 2002-20[\d]{2} \| (Loader Wizard version [^\s]+) /},
{:text=>'<div id="loading"><script type="text/javascript">document.write(\'<p>Initialising<br>ionCube Loader Wizard<br><span id="status"></span></p>\');</script>'},
{:text=>'<h2>ionCube Loader Wizard</h2><p class="alert">An updated version of this Wizard script is available <a href="http://loaders.ioncube.com/">here</a>.</p>'},
{:text=>'<img src="?page=logo" alt="ionCube logo">'},
{:text=>'alt="ionCube logo'},
{:version=>/<p>The ionCube Loader ([^\s]+) is already installed and encoded files should run without problems.<\/p>/},
{:version=>/<p>The ionCube Loader ([^\s]+) is already installed but it is an old version\. It is recommended that the Loader be updated to the latest version/},
]
end
