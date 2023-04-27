Plugin.define do
name "iScripts-SocialWare"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "iScripts SocialWare is an open source social networking script with customizable features like blogs, albums, gift shop, classifieds ,chat, storefront etc."
website "http://www.iscripts.com/socialware/"
dorks [
'"powered by iScripts SocialWare" "A premium product from iScripts.com"'
]
matches [
{:text=>"var loginWindow=window.open('http://www.meebo.com','ChatRoom','top=5 ,left=5,toolbars=no,maximize=no,resize=no,width=500,height=478,location=no,directories=no,scrollbars=yes,border=thin,caption=no');"},
{:text=>'          <td align="right">Powered by <a href="http://www.iscripts.com/socialware/" target="_blank">iScripts SocialWare</a> . A premium product from <a href="http://www.iscripts.com" target="_blank">iScripts.com</a></td>'},
]
end
