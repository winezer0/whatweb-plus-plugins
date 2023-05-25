Plugin.define do
name "Apache-Druid"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/druid.index|DruidDrivers|DruidVersion|Druid Stat Index/},
{:search=>"all", :text=>'Apache Druid'},
]
end