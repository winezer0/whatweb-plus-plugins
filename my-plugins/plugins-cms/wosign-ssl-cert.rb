Plugin.define do
name "wosign-ssl-cert"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'https://seal.wosign.com/Signature'},
{:text=>'https://seal.wosign.com/tws.js'},
]
end