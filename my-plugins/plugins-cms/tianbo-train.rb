Plugin.define do
name "tianbo-train"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'tianbo_train'},
{:url=>'/App_Themes/Default/ApplyEmall.css', :text=>'.detailEmall .emallBody .bodyCourse .itemBody .itemBodyBody .bodyCenter2'},
{:url=>'/App_Themes/Default/Control.css', :text=>'url(../../App_Image/System/menuselectbg.gif)'},
]
end