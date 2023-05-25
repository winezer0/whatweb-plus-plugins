Plugin.define do
name "ZIPBOX-Media"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "With ZIPBOX start selling digital music, images, videos, books and more with your own secure online customizable website with credit card processing, file storage and much more."
website "http://www.zipboxmedia.com/"
dorks [
'"POWERED BY ZIPBOX MEDIA" inurl:"album.php"'
]
matches [
{:certainty=>75, :ghdb=>'"POWERED BY ZIPBOX MEDIA" inurl:"album.php"'},
{:regexp=>/<a href="https:\/\/secure.zipboxmedia.com\/signup\/\?referral=[\d]+" class="zbm" title="get your own ZIPBOX Media Store"><img src="\/images\/get_zipbox.gif" alt="Get A ZIPBOX Media Store" border="0" \/><\/a>/},
{:regexp=>/<h3 style="padding-top:2px; margin:0px; display:none"><a href="javascript:loadMoreMessages\([\d]+\)" id="load_more_messages">Load more messages<\/a><\/h3>/},
{:text=>'<a href="http://www.zipboxmedia.com" class="zbm"><img src="/images/zb_rotate_ft.gif" alt="Powered By ZIPBOX Media" border="0" /></a>'},
]
end
