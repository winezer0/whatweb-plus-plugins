Plugin.define do
name "apache-activemq"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<h2>Welcome to the Apache ActiveMQ!<\/h2>/},
{:search=>"all", :text=>'Apache ActiveMQ'},
{:text=>'ACTi Corporation All Rights Reserved'},
{:text=>'Web Configurator'},
{:url=>"/favicon.ico",:allhash=>"05664fb0c7afcd6436179437e31f3aa6"}
]
end