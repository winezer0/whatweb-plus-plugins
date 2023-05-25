Plugin.define do
name "Whir-OA"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/return ajaxForSync[(]whirRootPath/},
{:search=>"header",:regexp=>/Set-Cookie: OASESSIONID=.*/},
{:url=>"/favicon.ico",:allhash=>"fa1f01d0392d60663d8ce936fe06096a"},
]
end