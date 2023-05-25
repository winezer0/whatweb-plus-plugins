Plugin.define do
name "wuzhicms"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'Powered by wuzhicms'},
{:text=>'content="wuzhicms'},
{:text=>'index.php?m=member&v=logout'},
{:url=>"/coreframe/"},
{:url=>"/index.php?m=core&v=login&_su=wuzhicms",:text=>"wuzhicms.com"},
{:url=>"/robots.txt",:text=>"coreframe"},
]
end