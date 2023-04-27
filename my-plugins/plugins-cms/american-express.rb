Plugin.define do
name "american-express"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<[^>]+aria-labelledby="pi-american_express/},
]
end