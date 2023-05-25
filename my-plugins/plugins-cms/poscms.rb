Plugin.define do
name "poscms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'POSCMS'},
{:text=>"$.cookie('poscms_qq', '1',{expires: 1});"},
{:text=>"(!$.cookie('poscms_qq'))"},
{:version=>/POSCMS v(.+)/},
]
end