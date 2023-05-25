Plugin.define do
name "Rancher" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/Welcome to Rancher|<meta name="ui\/config\/asset-manifest" content=".*/},
{:search=>"header",:regexp=>/Set-Cookie: PL=rancher.*/},
]
end