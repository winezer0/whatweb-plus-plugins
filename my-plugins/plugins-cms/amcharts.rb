Plugin.define do
name "amcharts" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/<svg[^>]*><desc>JavaScript chart by amCharts ([\d.]*)/},
{:regexp=>/amcharts.*\.js/, :search=>'body'},
{:search=>"all", :text=>'amCharts'},
]
end