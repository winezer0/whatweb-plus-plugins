Plugin.define do
name "microsoft-isa-server"
authors [
"winezero",
]
version "0.1"
description "Microsoft ISA Server"
# https://baike.baidu.com/item/ISA%E6%9C%8D%E5%8A%A1%E5%99%A8/1157732
matches [
{:search=>"all", :text=>'ISA Server'},
{:search=>'headers', :text=>'ISASERVER'},
]
end