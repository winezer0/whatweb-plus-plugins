Plugin.define do
name "awstats-admin"
authors [
"winezero",

]
version "0.1"
matches [
{:text=>'<frame name="mainleft" src="awstats.pl?config='},
{:text=>'generator" content="AWStats'},
]
end