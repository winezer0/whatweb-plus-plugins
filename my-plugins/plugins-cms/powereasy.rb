Plugin.define do
name "powereasy"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Powereasy'},
{:text=>"/js/jquery.peex.js"},
{:text=>"/powereasy/"},
{:url=>"/Admin/Login.aspx",:text=>"PowerEasy"},
{:url=>"js/jquery.peex.js",:text=>"powereasy"},
]
end