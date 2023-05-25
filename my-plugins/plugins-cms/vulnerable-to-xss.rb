Plugin.define do
name "Vulnerable-To-XSS"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.2"
description "This plugin can be used as a very basic xss scanner. It searches for instances of <script>alert(*)</script> in the HTML source."
passive do
m=[]
result=""
if @body =~ /<script>([\s]*)(alert\([a-zA-Z0-9\/\'\"]+\))([\s]*[\;]?[\s]*)<\/script>/i
version = @body.scan(/<script>([\s]*)(alert\([a-zA-Z0-9\/\'\"]+\))[\s]*[\;]?[\s]*<\/script>/i) { |match|
result << "#{match} "
}
m << {:version=>result, :certainty=>25}
end
m
end
matches [
{:regexp=>/VTS /, :search=>"headers[server]"},
{:status=>401, :regexp=>/<html>\r\n<head>\r\n<title>Error Message<\/title>\r\n<link rel="stylesheet" href="\/VTS.css">\r\n\r\n<\/head>\r\n<body class=error>\r\n<h1>Error Message<\/h1>\r\n<p>Error Code 401.\r\n<p>Message: Unauthorized.\r\n<p>Description: 401 = No permission -- see authorization schemes./},
{:version=>/VTS ([\d\.]+)/, :search=>"headers[server]"},
{:version=>/^VTS=([\d\.]+)/, :search=>"headers[set-cookie]"},
]
end