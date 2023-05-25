Plugin.define do
name "wp-engine"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'WP Engine'},
{:search=>'headers[x-powered-by]', :regexp=>/WP Engine/},
]
end