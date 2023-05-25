Plugin.define do
name "CaLogic-Calendars"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Web calendar"
website "http://calogic.de/"
dorks [
'"This is your Timezone Offset from GMT and is shown in hours."'
]
matches [
{:text=>'    <h1><b>CaLogic Calendars Demo - Login</b></h1>'},
{:text=>'Change for 1.2.2 : the logon form MUST use the post method for security reasons!!!', :version=>"1.2.2"},
{:text=>'This is your Timezone Offset from GMT and is shown in hours. It is based on your computers time and country settings. The Timezone Offset is needed in order to show the correct date and time and to ensure that your reminders get sent on time.<br>If the Timezone Offset is not correct, then your computers time settings are wrong. You should not adjust the Timezone Offset, but rather correct your computers time settings.'},
{:version=>/<font size="-1">CaLogic Calendars V([\d\.]+)<\/font>/},
]
end
