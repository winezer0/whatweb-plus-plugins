Plugin.define do
name "Apahce-Flink" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/<title>Apache Flink Web Dashboard<\/title>|<flink-root><\/flink-root>/},
]
end