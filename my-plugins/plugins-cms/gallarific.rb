Plugin.define do
name "Gallarific"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Gallarific is a fully customizable PHP photo gallery script that lets you collect, organize and share your images, photos and multimedia files with visitors directly from your Web site. It's compatible with 97% of Web site hosts."
website "http://www.gallarific.com/"
dorks [
'intitle:Gallarific "Sign in to Gallarific"'
]
matches [
{:text=>'<!-- popular_grid: output a 4x1 row containing the most viewed photos --><tr> <td colspan="2" class="heading">Most Viewed Photos</td>'},
{:text=>'<!-- recent_grid: output a 4x1 row containing recently uploaded photos --><tr> <td colspan="2" class="heading">Recently Uploaded Photos</td>'},
{:text=>'<a href="http://www.gallarific.com/"><img src="http://www.gallarific.com/images/gallarific_white.gif" width="215" height="61" border="0" /></a>'},
{:text=>'<meta http-equiv="Generator" content="Gallarific" />'},
{:text=>'<title>Gallarific > Sign in</title>'},
{:text=>'Gallarific > Sign in'},
{:text=>'content="Gallarific'},
]
end
