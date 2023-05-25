Plugin.define do
name "solvonet-device-voip"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Solvonet Device'},
{:search=>"all", :text=>'VoIP'},
{:search=>"headers", :text=>'Basic realm="SOLVONET'},
]
end