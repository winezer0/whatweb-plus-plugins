Plugin.define do
name "CrazyEgg"
authors [
"Peter van der Laan",
]
version "0.1"
description "Visualizes where your visitors click"
website "http://www.crazyegg.com/"
matches [
{:account=>/dnn506yrbagrg\.cloudfront\.net\/pages\/scripts\/(\d+\/\d+)/},
{:text=>"cetrk.com"},
]
end