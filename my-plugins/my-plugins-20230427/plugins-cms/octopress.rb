Plugin.define do
name "octopress" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/.octopress\.js/, :search=>'body'},
{:regexp=>/Octopress/, :search=>'body'},
{:regexp=>/Powered by <a href="http:..octopress\.org">/},
{:search=>"all", :text=>'Octopress'},
{:url=>"/favicon.ico",:allhash=>"eec3051d5c356d1798bea1d8a3617c51"},
]
end