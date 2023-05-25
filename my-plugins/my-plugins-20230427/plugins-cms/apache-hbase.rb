Plugin.define do
name "apache-hbase"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<style[^>]+static.hbase/},
{:search=>"all", :text=>'Apache HBase'},
]
end