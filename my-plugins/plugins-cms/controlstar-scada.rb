Plugin.define do
name "Controlstar-SCADA"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Controlstar SCADA"
website "http://www.controlstar.com/product_scada.php"
matches [
{:text=>'<APPLET archive="scada.jar, toolbox.jar, batik.jar, crimson-parser.jar" code="Scada" style="position:absolute;left:0;top:0;width:expression(document.body.clientWidth);height:expression(document.body.clientHeight);" >'},
]
end
