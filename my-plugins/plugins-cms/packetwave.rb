Plugin.define do
name "PacketWave"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Some sort of wireless broadband contraption from Aperto Networks"
website "http://www.apertonet.com/products/pmax_productline.html"
matches [
{:text=>'<td bgcolor="#cccccc" colspan=2 align="center"><input type="button" name="goto" value="Log On" onClick="encode_submit(this.form)">'},
]
end
