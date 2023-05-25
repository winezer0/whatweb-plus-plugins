Plugin.define do
name "Jupyter"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<title>Jupyter Notebook<\/title/},
{:url=>"/favicon.ico",:allhash=>"97c6417ed01bdc0ae3ef32ae4894fd03"},
]
end