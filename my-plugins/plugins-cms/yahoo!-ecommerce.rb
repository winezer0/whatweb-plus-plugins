Plugin.define do
name "yahoo!-ecommerce"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<link[^>]+store\.yahoo\.net/},
{:search=>"all", :text=>'Yahoo! Ecommerce'},
{:search=>'headers[x-xrds-location]', :regexp=>/.ystore./},
]
end