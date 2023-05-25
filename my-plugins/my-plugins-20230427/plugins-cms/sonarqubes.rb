Plugin.define do
name "sonarqubes" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/^.js.bundles.sonar\.js?v=([\d.]+)$/, :search=>'body'},
{:regexp=>/<link href=".css.sonar\.css\?v=([\d.]+)/,:offset=>1},
{:regexp=>/<title>SonarQube<.title>/},
{:regexp=>/^SonarQubes$/, :search=>'body'},
{:search=>"all", :text=>'SonarQubes'},
]
end