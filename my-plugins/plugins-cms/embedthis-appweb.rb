Plugin.define do
name "embedthis-appweb"
authors [
"winezero",
]
version "0.2"
matches [
{:search=>"all", :text=>'EmbedThis Appweb'},
{:search=>'headers[server]',:offset=>1, :regexp=>/Mbedthis-Appweb(?:.([\d.]+))?/},
]
end