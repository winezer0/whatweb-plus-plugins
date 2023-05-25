Plugin.define do
name "sonarqube"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/^.js.bundles.sonar\.js?v=([\d.]+)$/, :search=>'body'},
{:regexp=>/<link href=".css.sonar\.css\?v=([\d.]+)/,:offset=>1},
{:regexp=>/<title>SonarQube<.title>/},
{:regexp=>/^SonarQubes$/, :search=>'body'},
{:regexp=>/sonar.css\?v=/},
{:search=>"all", :text=>'SonarQubes'},
{:text=>'<title>SonarQube</title>'},
{:version=>/sonar.css\?v=(.*?)"/},
]
end