Plugin.define do
name "datatables" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'DataTables'},
{:search=>'body', :regexp=>/dataTables.*\.js/},
]
end