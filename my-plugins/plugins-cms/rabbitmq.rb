Plugin.define do
name "rabbitmq"
authors [
"winezero",
]
version "0.1"
matches [
{:mmh3=>'1064742722'},
{:search=>"all", :text=>'RabbitMQ'},
{:text=>'<title>RabbitMQ Management</title>'},
]
end