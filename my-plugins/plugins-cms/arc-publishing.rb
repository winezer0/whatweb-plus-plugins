Plugin.define do
name "arc-publishing"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<div [^>]*id="pb-root/},
{:search=>"all", :text=>'Arc Publishing'},
]
end