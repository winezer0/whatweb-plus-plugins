Plugin.define do
name "天生创想OA"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'天生创想 知尚云OA'},
{:search=>"all", :text=>'天生创想OA协同网络办公系统'},
{:text=>'Powered by <a href="http://www.515158.com/">'},
{:version=>/OA<\/a> V([\d\.]+)<\/div>/},
]
end