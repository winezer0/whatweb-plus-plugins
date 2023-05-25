Plugin.define do
name "videojs" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/cdnjs\.cloudflare\.com\.ajax\.libs\.video\.js\.([\d\.]+)\./, :search=>'body'},
{:regexp=>/<div[^>]+class="video-js+">/},
{:regexp=>/zencdn\.net.c.video\.js/, :search=>'body'},
]
end