Plugin.define do
name "has-word-env" 
authors [
    "winezero",
]
version "0.1"
matches [
{:url=>"/setting/configList?pagenum=1&index=1",:string=>/("env":".+?")/i},
]
end