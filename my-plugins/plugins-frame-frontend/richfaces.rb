Plugin.define do
name "richfaces"
authors [
  "winezero", 
]
version "0.1"
description "richfaces."

matches [
{ :text=>"richfaces" },  
{ :text=>"rich-faces" },  
{ :search=>"headers", :text=>"X-Powered-By: JSF" },
]
end

