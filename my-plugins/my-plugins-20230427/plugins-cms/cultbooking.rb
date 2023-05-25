Plugin.define do
name "CultBooking"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A comprehensive and free-of-charge Internet Booking Engine (IBE)"
website "http://www.cultuzz.com/cultbooking"
dorks [
'inurl:cultbooking.php filetype:php'
]
matches [
{:certainty=>75, :ghdb=>"inurl:cultbooking.php filetype:php"},
{:text=>'<span class="font" onclick="small();"> <img src="img/default/small.gif" alt="small font"> </span> <span class="font" onclick="medium();"><img src="img/default/medium.gif" alt="medium font" > </span> <span class="font" onclick="large();"> <img src="img/default/large.gif" alt="large font"></span></td>'},
{:text=>'<tr><td width="3%" align="center"><img src="img/default/small/pfeil_vor.gif" id="up2"/></td><td width="32%"> <p>Enter the promotioncode (if any)</p></td><td><input size="10" maxlength="20" name="promotionCode" align="right" value="" >'},
{:text=>'<tr><td width="3%" align="center"><img src="img/default/small/pfeil_vor.gif" id="up2"/></td><td width="45%"> <p>Enter the promotion code (if any)</p></td><td><input size="10" maxlength="20" name="promotionCode" align="right">'},
{:text=>'<tr><td width="3%" align="center"><img src="img/default/small/pfeil_vor.gif" id="up2"/></td><td width="45%"> <p>Promotioncode eingeben (falls vorhanden)</p></td><td><input size="10" maxlength="20" name="promotionCode" align="right">'},
]
end
