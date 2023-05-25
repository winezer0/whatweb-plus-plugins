Plugin.define do
name "DBHcms"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton"
]
version "0.2"
description "The DBHcms is a small free Open Source content management system for personal and small business websites."
website "http://www.drbenhur.com"
dorks [
'"powered by DBHcms" -dork'
]
matches [
{:regexp=>/<!--[\r\n\s]+#############################################################################################[\r\n\s]+#                                                                                           #[\r\n\s]+#  DBHCMS - Web Content Management System                                                   #[\r\n\s]+#                                                                                           #[\r\n\s]+#############################################################################################/},
{:regexp=>/<!--[\r\n\s]+Change the copyright but please leave a link "powered by DBHcms" to http:\/\/www.drbenhur.com[\r\n\s]+This will help a lot for the DBHcms to get well-known. You may change color and size, you[\r\n\s]+can even remove it if you wish but then at least let me know about your website so I can add[\r\n\s]+you to my references. Thank you very much for your cooperation! Greets, Kai.[\r\n\s]+-->/},
{:regexp=>/<!--[\r\n\s]+Please leave this link on your website, it will help a lot for the DBHcms to get well-known. [\r\n\s]+You may change color and size, you can even remove it if you wish but then at least let me [\r\n\s]+know about your website so I can add you to my references.[\r\n\s]+Thank you very much for your cooperation! Greets, Kai.[\r\n\s]+-->/},
{:regexp=>/<!--[\s]+Change the copyright but please leave a link "powered by DBHcms" to http:\/\/www.drbenhur.com[\s]/},
{:regexp=>/<!--[\s]+Please leave this link on your website, it will help a lot for the DBHcms to get well-known./},
{:regexp=>/<!--[\s]+\#{90,100}[\s]+#[\s]+#[\s]+#  DBHCMS - Web Content Management System[\s]+#[\s]+#[\s]+#[\s]+\#{90,100}/},
{:text=>'<a target="_blank" href="http://www.drbenhur.com/" class="copyright"> powered by DBHcms </a>'},
{:text=>'powered by DBHcms'},
]
end