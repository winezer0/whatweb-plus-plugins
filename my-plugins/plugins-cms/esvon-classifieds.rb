Plugin.define do
name "Esvon-Classifieds"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Intense research, development and testing has brought us to what we call Esvon Classifieds. This package is a good base for building a successful website and is created with high performance and scalable technology using PHP and MySQL."
website "http://www.esvon.com/pg/products/p_classifieds/"
dorks [
'"powered by Esvon Classifieds"'
]
matches [
{:regexp=>/Powered by Esvon <a href='http:\/\/www.esvon.com\/pg\/products\/p_classifieds\/' target="_blank"[^>]+>Classifieds<\/a>/},
{:text=>'<!-- DO NOT REMOVE OR EDIT THIS LINE, DOING SO WILL RESULT IN COPYRIGHT VIOLATIONS UNLESS YOU PURCHASED "POWERED BY" REMOVAL OPTION -->'},
{:text=>'Powered by Esvon'},
]
end
