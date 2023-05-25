Plugin.define do
name "concrete5-cms"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'CONCRETE5'},
{:text=>'CCM_DISPATCHER_FILENAME'},
{:text=>'generator" content="ezCMS'},
]
end