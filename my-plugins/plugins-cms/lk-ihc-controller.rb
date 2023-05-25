Plugin.define do
name "lk-ihc-controller"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Visualization of an IHC Control electrical installation."
website "http://www.prolor.dk/ihc.php"
dorks [
'intitle:"LK IHC controller forside" "SceneView"'
]
matches [
{:text=>'<table width="640" height="480" border="0" cellspacing="0" cellpadding="0"  background="images/bg_image_LK.jpg">'},
{:text=>'<title>LK IHC controller forside</title>'},
{:url=>"/images/bg_image_LK.jpg", :md5=>"c23378580cb58ee4c404106dda5757b3"},
]
end
