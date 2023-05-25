Plugin.define do
name "Apache-RocketMQ" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/title>RocketMq.*<\/title>/},
{:search=>"header",:regexp=>/X-Application-Context: rocketmq-console.*/},
]
end