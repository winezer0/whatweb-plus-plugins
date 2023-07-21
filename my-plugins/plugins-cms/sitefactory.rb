Plugin.define do
name "sitefactory" 
authors [
"winezero",

]
version "0.2"
matches [
{:search=>"all", :text=>'sitefactory'},
{:url=>'/sitefactory/signon.aspx?ReturnUrl=%2fsitefactory%2fdefault.aspx', :text=>'SiteFactory <span>CMS'},
]
end