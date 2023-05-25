Plugin.define do
name "zurb-foundation"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<div [^>]*class="[^"]*(?:small|medium|large)-\d{1,2} columns/},
{:regexp=>/<link[^>]+foundation[^>"]+css/},
{:search=>"all", :text=>'ZURB Foundation'},
]
end