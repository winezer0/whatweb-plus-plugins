Plugin.define do
name "wordpress-plugin-woocommerce"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'/wp-content/'},
{:text=>'<meta name=\"generator\" content=\"WordPress'},
]
end