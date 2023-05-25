Plugin.define do
name "java-servlet"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/Servlet(?:\.([\d.]+))?/,:offset=>1, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'Java Servlet'},
]
end