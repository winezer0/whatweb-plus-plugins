Plugin.define do
name "bingophp-news"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "News administration web app"
website "http://bingophp.free.fr"
dorks [
'inurl:bnadmin.php'
]
matches [
{:text=>"</b><a href='bnadmin.php' target='_blank'>Admin des news</a>'"},
{:text=>"onClick=\"window.open('bnarchives.php','archive','toolbar=0,location=0,directories=0,status=1,scrollbars=1,resizable=1,copyhistory=1,menuBar=0,width=400,height=500');return(false)\">Archives</A><br>"},
{:text=>'       <td width="50%"><a href=\'http://www.bingo-php.fr.st\' target=\'_blank\'><img src=\'http://tonsitefr.multimania.com/images/468x60-1.gif\' border=\'0\' alt="Ressources gratuites pour votre site web"></a>'},
{:text=>'<a href="http://bingophp.free.fr" target="_blank"><font color="#00000" style="font-size: 8px">'},
{:text=>'<br><input type=\'submit\' value="Acceder a l\'administration des news">'},
{:text=>'<html><head><title>BinGoPHP News - IDENTIFICATION</title></head>'},
]
end
