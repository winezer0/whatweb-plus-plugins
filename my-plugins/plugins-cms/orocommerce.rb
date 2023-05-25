Plugin.define do
name "orocommerce"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/oro\.min\.js\?version=([\d.]+)/, :search=>'body'},
{:regexp=>/<script [^>]+data-requiremodule="oro./},
{:regexp=>/<script [^>]+data-requiremodule="oroui./},
{:search=>"all", :text=>'OroCommerce'},
]
end