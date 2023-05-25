Plugin.define do
name "essential-js-2"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<[^>]+ class ?= ?"(?:e-control|[^"]+ e-control)(?: )[^"]* e-lib\b/},
{:search=>"all", :text=>'Essential JS 2'},
]
end