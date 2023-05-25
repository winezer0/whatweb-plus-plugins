Plugin.define do
name "Pushgateway"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<a class="navbar-brand" href="#">Pushgateway<\/a>/},
]
end