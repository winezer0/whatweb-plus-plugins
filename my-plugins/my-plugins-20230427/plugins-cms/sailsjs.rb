Plugin.define do
name "SailsJS"
authors [
"Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "SailsJS is a realtime MVC Framework for Node.js"
website "https://sailsjs.com/"
matches [
{:search=>"headers[set-cookie]", :regexp=>/^sails.sid/, :name=>"sails.sid cookie"},
]
end
