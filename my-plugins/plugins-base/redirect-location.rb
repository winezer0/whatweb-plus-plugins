Plugin.define do
name "redirect-location"
authors [
"Andrew Horton",
]
version "0.2"
description "HTTP Server string location. used with http-status 301 and 302"
passive do
m=[]
unless @headers.nil?
location=nil
location=@headers["location"] if @headers.keys.include?("location")
unless location.nil?
m << {:name=>"location",:string=>location}
end
end
m
end
matches [
{:account=>/<b>(Warning|Fatal error)<\/b>: .* in <b>[A-Z]{1}:\\(Documents and Settings|Users)\\([^<^\\]+)\\[^<]*<\/b> on line <b>[0-9]+<\/b><br \/>/i, :offset=>2},
{:account=>/<b>(Warning|Fatal error)<\/b>: .* in <b>\/home\/([^<^\/]+)\/[^<]*<\/b> on line <b>[0-9]+<\/b><br \/>/, :offset=>1},
{:filepath=>/<b>(Warning|Fatal error)<\/b>: .* in <b>([^<]+)<\/b> on line <b>[0-9]+<\/b><br \/>/, :offset=>1},
{:filepath=>/^Error parsing (.+) on line [\d]+$/, :search=>"headers[php]"},
{:filepath=>/^Error parsing \/home\/([^\/]+)\/.+ on line [\d]+$/, :search=>"headers[php]"},
{:module=>/[^\r^\n]*PHP\/[^\s^\r^\n]+ with (Hardening-Patch|Suhosin-Patch)/, :search=>"headers[server]"},
{:module=>/[^\r^\n]*PHP\/[^\s^\r^\n]+ with (Hardening-Patch|Suhosin-Patch)/, :search=>"headers[x-powered-by]"},
{:name=>"PHP Warning Header", :regexp=>//, :search=>"headers[php warning]"},
{:regexp=>/^Error parsing (.+) on line [\d]+$/, :search=>"headers[php]"},
{:regexp=>/^php.?([\d.]+)?/,:offset=>1, :search=>'headers[x-powered-by]'},
{:search=>"headers", :text=>'X-Powered-By: PHP'},
{:search=>'headers[server]',:offset=>1, :regexp=>/php.?([\d.]+)?/},
{:url=>"/?=PHPB8B5F2A0-3C92-11d3-A3A9-4C7B08C10000", :version=>/<tr class="h"><th colspan="2">PHP (\d) Authors<\/th><\/tr>/},
{:url=>"/?=PHPB8B5F2A0-3C92-11d3-A3A9-4C7B08C10000", :version=>/<tr class="h"><th>PHP ([\d\.]+) Quality Assurance Team<\/th><\/tr>/},
{:version=>/[^\r^\n]*PHP\/([^\s^\r^\n]+)/, :search=>"headers[server]"},
{:version=>/[^\r^\n]*PHP\/([^\s^\r^\n]+)/, :search=>"headers[x-powered-by]"},
]
end