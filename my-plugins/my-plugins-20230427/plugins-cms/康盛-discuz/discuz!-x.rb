Plugin.define do
name "discuz!-x"
authors [
"winezero",

]
version "0.1"
matches [
{:text=>'<meta name=\"generator\" content=\"Discuz!'},
{:text=>'<script src=\".*?logging\.js'},
]
end