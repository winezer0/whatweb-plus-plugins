Plugin.define do
name "atlassian-bitbucket"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/<li>Atlassian Bitbucket <span title="[a-z0-9]+" id="product-version" data-commitid="[a-z0-9]+" data-system-build-number="[a-z0-9]+"> v([\d.]+)</},
{:search=>"all", :text=>'Atlassian Bitbucket'},
{:search=>'body', :regexp=>/Bitbucket/},
]
end