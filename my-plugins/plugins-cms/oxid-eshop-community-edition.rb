Plugin.define do
name "oxid-eshop-community-edition"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<!--[^-]*OXID eShop Community Edition, Version (\d+)/,:offset=>1  },
]
end