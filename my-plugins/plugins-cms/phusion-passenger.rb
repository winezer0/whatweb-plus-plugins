Plugin.define do
name "phusion-passenger"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'headers[x-powered-by]', :regexp=>/Phusion Passenger ?([\d.]+)?/},
{:search=>"all", :text=>'Phusion Passenger'},
{:search=>'headers[server]',:offset=>1, :regexp=>/Phusion Passenger ([\d.]+)/},
]
end