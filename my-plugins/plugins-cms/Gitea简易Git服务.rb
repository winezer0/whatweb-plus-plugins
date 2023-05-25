Plugin.define do
name "Gitea简易Git服务" 
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/<div class="ui left">\n\s+© Gitea Version: ([\d.]+)/},
{:search=>'body', :regexp=>/^go,git,self-hosted,gitea$/},
{:serach=>'headers', :text=>'i_like_gitea'},
]
end