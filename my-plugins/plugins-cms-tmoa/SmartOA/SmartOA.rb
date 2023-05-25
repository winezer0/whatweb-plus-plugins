Plugin.define do
name "SmartOA"
authors [
"winezero",
]
version "0.2"
matches [
{:search=>"headers", :text=>'smartoa'},
{:text=>'/smartoa.plist'},
{:url=>'/content/images/headerback.jpg', :md5=>'674784f372f603436befd992f90fdd64'},
{:url=>'/content/theme/base.css', :text=>'iepngfix, img, .menu-item-line'},
]
end