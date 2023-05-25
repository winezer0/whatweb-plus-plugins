Plugin.define do
name "riskified"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<[^>]*beacon\.riskified\.com/},
{:regexp=>/<[^>]*c\.riskified\.com/},
{:search=>"all", :text=>'Riskified'},
{:search=>'headers[server]', :regexp=>/Riskified Server/},
]
end