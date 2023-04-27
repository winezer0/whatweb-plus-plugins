Plugin.define do
name "FBI-Takedown-Notice"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin detects instances of the joint Department of Justice, FBI and IPR Center take down notice."
website "http://fbi.gov/"
matches [
{:md5=>"89a9a91804802c42fcc3aadbfaff0e55"},
{:md5=>"dc0743cd718f16198a72a501ae37fd9a"},
{:url=>"/banner.jpg", :md5=>"5d1d926064c1a4a427100a5833d47dfd"},
]
end
