Plugin.define do
name "Apache-Struts2"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<a href=.*\.action.*<\/a>|<form id=.*\.action.*|<a href=.*\.do.*<\/a>|.*\.do|.*\.action/},
]
end