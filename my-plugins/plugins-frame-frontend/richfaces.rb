Plugin.define do
name "richfaces"
authors [
"winezero",
]
version "0.1"
description "richfaces."
matches [
{:search=>"headers", :text=>"X-Powered-By: JSF"},
{:text=>"rich-faces"},
{:text=>"richfaces"},
]
end