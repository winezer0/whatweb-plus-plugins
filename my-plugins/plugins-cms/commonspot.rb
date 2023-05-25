Plugin.define do
name "CommonSpot"
authors [
"Tonmoy Saikia",

"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "The CommonSpot Web content management solution (Web CMS) increases the value of content by creating engaging Web experiences that generate high impact results."
website "http://www.paperthin.com/"
matches [
{:regexp=>/<img[^>]+src="[^"]+commonspot[^"]+"[^>]*\/>/},
{:regexp=>/<link[^>]+href="[^"]commonspot\/commonspot\.css"[^>]+\/>/},
{:regexp=>/<meta[^>]+name="Generator"[^>]+content="CommonSpot[^"]+"[^>]*\/>/},
{:text=>'content="CommonSpot'},
{:version=>/<meta[^>]+name="Generator"[^>]+content="CommonSpot[^\d^"]+([\d\.]+)"[^>]*\/>/},
]
end
