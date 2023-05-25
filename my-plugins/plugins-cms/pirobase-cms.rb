Plugin.define do
name "pirobase-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<(?:script|link)[^>].site.[a-z0-9.._-]+.resourceCached.[a-z0-9.._-]+/},
{:regexp=>/<input[^>]+cbi:...cms./},
{:search=>"all", :text=>'pirobase CMS'},
]
end