Plugin.define do
name "TFTgallery"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TFTgallery is a PHP based web image gallery which doesn't need a database. It uses the directory structure for data storage. The main features are: an on-the-fly thumbnail creation, PDF and ZIP creation, image calendars, EXIF support."
website "http://www.tftgallery.org/"
dorks [
'intitle:"TFTgallery administration"'
]
matches [
{:regexp=>/<td class='footer_right'><a href='http:\/\/www.tftgallery.org\/' target='_blank'><img src="[^"]*images\/TFTgallery.png" alt="TFTgallery" border="0" \/><\/a><\/td>/},
{:text=>"<title>TFTgallery administration</title><link rel='stylesheet' type='text/css' href"},
{:text=>'<div class="login_text"><br /><a href="../index.php">back to the gallery</a></div>'},
{:text=>'Select an album: <select name="album" onchange="javascript:document.tftnavi.submit();"><option></option>'},
{:version=>/<meta name="generator" content="TFTgallery ([\d\.]{1,5}) http:\/\/www.tftgallery.org\/" \/>/},
]
end
