Plugin.define do
name "Laravel"
authors [
"Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "Laravel PHP Framework"
website "http://laravel.com/"
matches [
{:regexp=>/<a href="https:\/\/laravel.com\/docs">Documentation<\/a>|<a href="https:\/\/laravel.com\/docs">Docs<\/a>|<a href="https:\/\/github.com\/laravel\/laravel">GitHub<\/a>/},
{:search=>"header",:regexp=>/set-Cookie: laravel_session=.*/},
{:search=>"headers", :text=>'laravel_session'},
{:search=>"headers[set-cookie]", :regexp=>/^laravel_session/, :name=>"laravel_session cookie"},
{:serach=>'headers', :text=>'laravel_session'},
]
end
