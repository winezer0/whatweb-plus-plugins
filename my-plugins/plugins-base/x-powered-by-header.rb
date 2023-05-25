Plugin.define do
name "x-powered-by-header"
authors [
"Andrew Horton",
]
version "0.3"
description "X-Powered-By HTTP header"
passive do
m=[]
unless @headers["x-powered-by"].nil?
m << { :name=>"x-powered-by string", :string=>@headers["x-powered-by"] }
end
m
end
matches [
{:search=>"headers[Strict-Transport-Security]", :string=>/^(.*)$/},
]
end