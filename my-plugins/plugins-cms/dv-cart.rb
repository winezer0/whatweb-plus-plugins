Plugin.define do
name "DV-Cart"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DV Cart - fully featured Shopping Cart software - Requires: PHP and MySQL"
website "http://www.esmistudio.com/"
dorks [
'"You must have the proper credentials to access this page. Please login." inurl:"login.php?info=DENIED"'
]
matches [
{:text=>'<div id="KT_tngdeverror"><label>Message:</label><div>You must have the proper credentials to access this page. Please login.</div></div>'},
{:text=>'<table cellpadding="2" cellspacing="0" class="KT_tngtable">'},
{:text=>'class="KT_tngtable'},
]
end
