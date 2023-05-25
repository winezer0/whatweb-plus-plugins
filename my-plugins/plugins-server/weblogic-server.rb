Plugin.define do
name "weblogic-server"
authors [
"winezero",

]
version "0.1"
matches [
{:text=>'<META NAME=\"GENERATOR\" CONTENT=\"WebLogic Server\">'},
]
end