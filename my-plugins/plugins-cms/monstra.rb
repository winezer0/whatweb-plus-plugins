Plugin.define do
name "MonstraCMS"
authors ["winezer0"]
version "0.1"
description "Monstra is a content management system (CMS) written for server environments where a database is just too much to handle and/or is inaccessible."
website "https://github.com/monstra-cms/monstra"
matches [
{:text=>'<meta name="generator" content="Powered by Monstra">'},
{:text=>'Powered by <a href="http://monstra.org" target="_blank">Monstra</a>'},
{:version=>/content="Powered by Monstra (.+)"/},
]
end