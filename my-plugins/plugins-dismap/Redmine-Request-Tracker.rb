Plugin.define do
name "Redmine-Request-Tracker"
authors [
"winezero",
]
version "0.1"
matches [
{:certainty=>25, :text=>'<p id="bpscredits">'},
{:regexp=>/<span class="rtname">RT for ([^<]+)<\/span>/},
{:search=>"headers[set-cookie]", :regexp=>/RT_SID_[^\s^=]+=[a-f\d]{32};/},
{:text=>'<link rel="shortcut icon" href="/NoAuth/images//favicon.png" type="image/png" />', :module=>"Incident Response"},
{:text=>'<link rel="shortcut icon" href="/NoAuth/images/favicon.png" type="image/png" />'},
{:text=>'<link rel="stylesheet" href="/NoAuth/css/print.css" type="text/css" media="print" />'},
{:text=>'<link rel="stylesheet" href="/NoAuth/webrtfm.css" type="text/css" />', :module=>"FAQ Manager"},
{:text=>'<link rel="stylesheet" href="/RTIR/NoAuth/webrtir.css" type="text/css">', :module=>"Incident Response"},
{:url=>"/NoAuth/images/favicon.png", :md5=>"1e35f1aa90c98ca2bab85c26ae3e1ba7"},
{:url=>"/favicon.ico",:allhash=>"6d85758acb4f4baa4d242ba451c91026"},
{:version=>/&#187;&#124;&#171; RT ([^\s]+) Copyright 1996-20[\d]{2} <a href="http:\/\/www\.bestpractical\.com\?rt=([^\s^"^>]+)">Best Practical Solutions, LLC<\/a>\./},
{:version=>/<div class="titlebox-title">[\s]*<span class="left">[\s]*Login[\s]*<\/span>[\s]*<span class="right">[\s]*([^\s]+)[\s]*<\/span>[\s]*<\/div>/},
]
end