Plugin.define do
name "apache-hadoop"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<style[^>]+static.hadoop/},
{:text=>'Hadoop Administration'},
]
end