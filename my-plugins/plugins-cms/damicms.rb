Plugin.define do
name "damicms"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'content="damicms"'},
{:url=>'/config.xml', :text=>'damicms'},
]
end