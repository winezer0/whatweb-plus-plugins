Plugin.define do
name "ibm-websphere-commerce"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<(?:a|link|script)[^>]*(?:href|src)=".*(?:.wcsstore.|webapp\.wcs)/},
{:search=>"all", :text=>'IBM WebSphere Commerce'},
]
end