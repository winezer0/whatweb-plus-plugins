Plugin.define do
name "wp-rocket"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'headers[x-powered-by]', :regexp=>/WP Rocket(?:.([\d.]+))?/},
{:regexp=>/<!--[^>]+WP Rocket/},
{:search=>"all", :text=>'WP Rocket'},
]
end