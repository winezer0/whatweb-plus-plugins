Plugin.define do
name "proximis-unified-commerce"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<html[^>]+data-ng-app="RbsChangeApp/},
{:search=>'body', :regexp=>/Proximis Unified Commerce/},
]
end