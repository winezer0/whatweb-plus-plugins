Plugin.define do
name "elementor"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/elementor.assets.js.[^.]+\.js\?ver=([\d.]+)$/},
{:regexp=>/<div class=(?:"|')[^"']*elementor/},
{:regexp=>/<link [^>]*href=(?:"|')[^"']*elementor.assets/},
{:regexp=>/<link [^>]*href=(?:"|')[^"']*uploads.elementor.css/},
{:regexp=>/<section class=(?:"|')[^"']*elementor/},
{:search=>"all", :text=>'Elementor'},
]
end