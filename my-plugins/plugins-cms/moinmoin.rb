Plugin.define do
name "moinmoin" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/moin(?:_static(\d)(\d)(\d)|.+).common.js.common\.js/, :search=>'body'},
{:search=>"all", :text=>'MoinMoin'},
{:url=>"/favicon.ico",:allhash=>"b7f98dd27febe36b7275f22ad73c5e84"},
{:url=>"/favicon.ico",:allhash=>"e551b7017a9bd490fc5b76e833d689bf"},
]
end