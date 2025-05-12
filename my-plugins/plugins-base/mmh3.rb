Plugin.define do
name "mmh3"
authors [
"Andrew Horton",

]
version "0.2"
description "MMH3 sum of html body. Useful to find matching pages"
passive do
m=[]
unless @mmh3sum.nil?
m << {:name=>"all hash of html",:string=>@mmh3sum}
end
m
end
end
