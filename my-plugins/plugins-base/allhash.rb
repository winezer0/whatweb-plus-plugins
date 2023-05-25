Plugin.define do
name "Allhash"
authors [
"Andrew Horton",
]
version "0.2"
description "MD5 and MMH3 sum of html body. Useful to find matching pages"
passive do
m=[]
unless @allhashsum.nil?
m << {:name=>"all hash of html",:string=>@allhashsum}
end
m
end
end