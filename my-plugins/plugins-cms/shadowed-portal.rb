Plugin.define do
name "Shadowed-Portal"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Shadowed Portal CMS- Homepage [offline] : http://www.shad0wed.com/"
dorks [
'"Powered by Shadowed Portal" "These script\'s code is Copyright" -dork'
]
matches [
{:version=>/Powered by <a href="http:\/\/www.shad0wed.com\/"[^>]*>Shadowed Portal ([^<]+)<\/a>.<br \/>These script's code is Copyright &copy; 2003-20[\d]{2} by <a href="http:\/\/www.shadowedworks.com\/"[^>]*>Shadowed Works<\/a>.<br \/>Please be sure to read the <a href="http:\/\/www.shad0wed.com\/load.php\?mod=pages(&|&amp;)page=Terms_and_Conditions"[^>]*>Terms and Conditions<\/a> required for the use of these scripts./},
]
end
