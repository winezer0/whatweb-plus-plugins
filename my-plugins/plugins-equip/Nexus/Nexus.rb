Plugin.define do
name "Nexus"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/Sonatype Nexus Repository Manager|Nexus Repository Manager/},
{:search=>"header",:regexp=>/Server: Nexus.*/},
{:serach=>'headers', :text=>'NX-ANTI-CSRF-TOKEN'},
{:text=>'Nexus Repository Manager'},
{:url=>"/favicon.ico",:allhash=>"79a95f4f1c2cc36eea51fe66450acfa2"},
]
end