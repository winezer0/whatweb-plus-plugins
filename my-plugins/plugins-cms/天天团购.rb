Plugin.define do
name "天天团购"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'天天团购'},
{:text=>'Powered by <a href="http://www.tttuangou.com/"'},
{:version=>/V([\d\.]+) &copy; 2005 - 2018/},
]
end