Plugin.define do
name "seeyon" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/href="\/seeyon\/common\/images\//},
{:search=>"header",:regexp=>/Server: Seeyon-Server.*/},
{:text=>'/seeyon/USER-DATA/IMAGES/LOGIN/login.gif'},
{:text=>'/seeyon/common/'},
]
end