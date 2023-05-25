Plugin.define do
name "RedHat-JBoss" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/<h3>JBoss Management<\/h3>/},
{:url=>"/favicon.ico",:allhash=>"192decdad41179599a776494efc3e720"},
{:url=>"/favicon.ico",:allhash=>"799f70b71314a7508326d1d2f68f7519"},
]
end