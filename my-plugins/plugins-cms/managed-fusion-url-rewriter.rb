Plugin.define do
name "managed-fusion-url-rewriter"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Managed Fusion Url Rewriter is an HttpModule for the Microsoft ASP.NET Web Framework, or IIS 7.0 Integrated Pipeline. All rules are managed in a plain text using Apache mod_rewrite syntax."
website "http://managedfusion.com/"
matches [
{:search=>"headers[x-managedfusion-rewriter-version]", :version=>/^(.+)$/},
{:search=>"headers[x-rewritten-by]", :regexp=>/^ManagedFusion \(rewriter; reverse-proxy; +http:\/\/managedfusion\.com\/\)$/},
]
end
