Plugin.define do
name "LNMP"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<a href="https:\/\/lnmp.org" target="_blank">LNMP一键安装包<\/a>/},
]
end