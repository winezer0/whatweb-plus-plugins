Plugin.define do
name "dwr"
authors [
"Aung Khant <http://yehg.net/>",
]
version "0.1"
description "Direct Web Remoting - http://directwebremoting.org"
matches [
{:name=>'HTML Body',:text=>'/dwr/engine.js">'},
{:name=>'HTML Body',:text=>'/dwr/engine.js'},
{:name=>'HTML Body',:text=>'/dwr/engine.js\'>'},
]
end