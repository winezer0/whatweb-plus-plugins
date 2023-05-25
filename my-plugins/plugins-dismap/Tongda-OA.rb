Plugin.define do
name "Tongda-OA" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/rel="shortcut icon" href="\/static\/images\/tongda.ico"|<a href="https:\/\/www.tongda2000.com\/download/},
{:url=>"/favicon.ico",:allhash=>"ed0044587917c76d08573577c8b72883"},
]
end