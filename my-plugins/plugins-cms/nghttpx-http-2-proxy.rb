Plugin.define do
name "nghttpx-http-2-proxy"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'nghttpx - HTTP/2 proxy'},
{:search=>'headers[server]', :regexp=>/nghttpx nghttp2.?([\d.]+)?/,:offset=>1},
]
end