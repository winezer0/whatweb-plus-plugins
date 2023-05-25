Plugin.define do
name "bitnami"
authors [
"winezero",
]
version "0.1"
matches [
{:mmh3=>'-1607644090'},
{:regexp=>/<td><img src="img\/bitnami.png" alt="Bitnami"><\/td>|<p>Thanks for using Bitnami!<\/p>/},
]
end