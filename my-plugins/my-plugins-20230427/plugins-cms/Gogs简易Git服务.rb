Plugin.define do
name "Gogs简易Git服务" 
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/<div class="ui left">\n\s+© \d{4} Gogs Version: ([\d.]+) Page:/},
{:regexp=>/<button class="ui basic clone button" id="repo-clone-ssh" data-link="gogs@/},
{:search=>'body', :regexp=>/go, git, self-hosted, gogs/},
{:search=>'body', :regexp=>/js.gogs\.js/},
{:serach=>'headers', :text=>'i_like_gogs'},
]
end