Plugin.define do
name "SmugMug"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "SmugMug is a paid digital photo sharing website"
website "http://www.smugmug.com/"
matches [
{:name=>"X-SmugMug-Values HTTP Header", :regexp=>//, :search=>"headers[x-smugmug-values]"},
{:regexp=>/^SmugMug/, :search=>"headers[x-powered-by]"},
{:version=>/^SmugMug\/([\d\.]+)$/, :search=>"headers[x-powered-by]"},
]
end
