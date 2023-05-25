Plugin.define do
name "reinvigorate"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Reinvigorate measures your influence on the web in real-time. Simple, real-time web analytics + heatmaps."
website "http://www.reinvigorate.net/"
matches [
{:certainty=>10, :string=>/re_\("([a-z\d]{5}-[a-z\d]{10})"\);/},
{:certainty=>10, :text=>"<!-- Reinvigorate -->"},
{:certainty=>25, :string=>/reinvigorate\.track\("([a-z\d]{5}-[a-z\d]{10})"\);/},
{:search=>"all", :text=>'Reinvigorate'},
{:text=>'<script type="text/javascript" src="http://include.reinvigorate.net/re_.js"></script>'},
]
end
