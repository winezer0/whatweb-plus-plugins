Plugin.define do
name "jboss-web"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/JBossWeb(?:-([\d.]+))?/,:offset=>1, :search=>'headers[x-powered-by]'},
{:text=>'JBoss, Home of Professional Open Source'},
]
end