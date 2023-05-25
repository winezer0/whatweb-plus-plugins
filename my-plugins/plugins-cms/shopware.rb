Plugin.define do
name "shopware"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/(?:(shopware)|.web.cache.[0-9]{10}_.+)\.js/},
{:regexp=>/.engine.Shopware./, :search=>'body'},
{:regexp=>/<title>Shopware ([\d\.]+) [^<]+/,:offset=>1},
{:regexp=>/Shopware/, :search=>'body'},
{:search=>"all", :text=>'Shopware'},
{:search=>'body', :regexp=>/.jquery\.shopware\.min\.js/},
{:search=>'headers[sw-language-id]', :regexp=>/^[a-fA-F0-9]{32}$/},
]
end