Plugin.define do
name "php168"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'PHP168'},
{:text=>"/php168/"},
{:text=>"<a href=\"http:\/\/www.php168.com\/bbs\" target=\"_blank\">PHP168cms</a>"},
{:text=>"Powered By www.php168.com"},
{:text=>"Powered by <a href=\"http:\/\/www.php168.com\" target=\"_blank\">PHP168"},
{:url=>"/admin/",:text=>"PHP168"},
{:version=>/PHP168 V([\d\.]+)<\/a>/m},
]
end