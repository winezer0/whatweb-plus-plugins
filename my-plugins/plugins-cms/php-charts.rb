Plugin.define do
name "php-Charts"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "php-Charts is a class which can be used to generate different charts in different formats (PDF, PNG, JPG, HTML) using different data sources (csv, xml, MySQL, MS Sql, MS Access, PostgreSql, user defined data)."
website "http://php-charts.com/"
matches [
{:certainty=>25, :regexp=>/\b(href|src)\s*=\s*["'][^>]*url\.php\?type=bar&dimension=[^\s^&]+&data_type=[^\s^&]+&file_path=[^&]+&group_col=[^\s^&]+&series_col=[^\s^&]+&output_type=[^\s^&]+/},
]
end
