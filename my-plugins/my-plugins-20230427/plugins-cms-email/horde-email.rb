Plugin.define do
name "horde-email"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'horde_email'},
{:url=>'/login.php', :text=>'The Horde Project'},
]
end