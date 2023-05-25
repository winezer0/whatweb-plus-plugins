Plugin.define do
name "cartweaver"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Cartweaver is truly as close to Instant e-Commerce as you can get. Now you can have a full-featured, robust, scaleable, ASP shopping cart, ColdFusion shopping cart or PHP shopping cart ready in less time than you can imagine."
website "http://www.cartweaver.com/"
dorks [
'"powered by Cartweaver"'
]
matches [
{:md5=>'772f447bf727f9045aa3440ad30ebd40', :url=>'images/cartweaver88x31.gif'},
{:md5=>'c69d6a93a877325c6f33f8ee4339ce8f', :url=>'images/cartweaver80x15.gif'},
{:regexp=>/<a href="http:\/\/www.cartweaver.com[\/]*"[\ target="_blank"]*>[\s]*<img src="[images\/]*cartweaver[0-9]+x[0-9]+.gif" [^alt]+alt="Powered [B|b]+y Cartweaver"/},
{:text=>'    <h1>Cartweaver&copy; Administration Log In</h1>'},
{:text=>'<title>Cartweaver Error Notice</title>'},
]
end
