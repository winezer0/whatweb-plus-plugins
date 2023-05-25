Plugin.define do
name "backbee"
authors [
"Guillaume Delacour <gui@iroqwa.org>",
]
version "0.1"
description "BackBee is an open source Content Management System (CMS)"
matches [
{:certainty=>100, :text=>'<div id="bb5-site-wrapper">'},
]
end