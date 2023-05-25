Plugin.define do
name "apache-spark"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/src="\/static\/spark-logo(.*)\.png|spark:/},
{:search=>"all", :text=>'Apache Spark'},
]
end