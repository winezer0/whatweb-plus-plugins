Plugin.define do
name "froala-editor"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<[^>]+class="[^"]*(?:fr-view|fr-box)/},
{:search=>"all", :text=>'Froala Editor'},
]
end