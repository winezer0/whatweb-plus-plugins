Plugin.define do
name "Mezzanine"
authors [
"Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Mezzanine is a CMS built using Django."
website "http://mezzanine.jupo.org/"
matches [
{:regexp=>/mezzanine_login_interface/, :name=>"Admin Login Page "},
]
end
