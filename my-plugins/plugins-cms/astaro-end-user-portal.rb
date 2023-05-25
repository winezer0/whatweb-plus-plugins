Plugin.define do
name "Astaro-End-User-Portal"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Astaro End User Portal - A complete end-user tool suite for managing SMTP and POP3 quarantine."
website "http://www.astaro.com/"
matches [
{:text=>'<script src="eup/eup_50_change_password.js" type="text/JavaScript"></script>'},
{:url=>"/jape/ellipsis.xml", :md5=>"9639763b8c7f8caef097be4f3ffe5106"},
]
end
