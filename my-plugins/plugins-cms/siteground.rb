Plugin.define do
name "siteground" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/192fc2e7e50945beb8231a492d6a8024|b7440e60b07ee7b8044761568fab26e8|624d5be7be38418a3e2a818cc8b7029b|6b7412fb82ca5edfd0917e3957f05d89/, :search=>'headers[host-header]'},
{:search=>"all", :text=>'SiteGround'},
]
end