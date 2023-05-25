Plugin.define do
name "Gitea"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/href="https:\/\/docs.gitea.io">Help<\/a>/},
{:search=>"header",:regexp=>/Set-Cookie: i_like_gitea=.*/},
]
end