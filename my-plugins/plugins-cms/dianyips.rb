Plugin.define do
name "dianyips" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'dianyips'},
{:url=>'/dianyi/template/default/css/main.css', :text=>'DianyiSheji'},
{:url=>'/templates/default/css/main.css', :text=>'dianyisheji'},
]
end