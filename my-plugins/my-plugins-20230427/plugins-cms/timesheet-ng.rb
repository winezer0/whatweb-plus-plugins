Plugin.define do
name "Timesheet-NG"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Timesheet NG is a free Open Source online time tracking application. Focusing on ease of use, Timesheet NG allows multiple employees and contractors to track and log their time spent on multiple projects."
website "http://www.timesheetng.org/"
dorks [
'"Username" "Timesheet Login" inurl:login ext:php'
]
matches [
{:md5=>"df3e567d6f16d040326c7a0ea29a4f41", :url=>"images/spacer.gif"},
{:text=>"<!-- include the timesheet face up until the heading start section -->"},
{:text=>'<META name="description" content="Timesheet Next Gen">'},
{:text=>'<td><img class="login_image" src="images/spacer.gif"></td>'},
]
end
