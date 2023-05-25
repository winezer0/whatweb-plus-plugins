Plugin.define do
name "Citrix-Metaframe"
authors [
"Andrew Horton",
]
version "0.2"
description "Citrix-Metaframe. Thin clients."
matches [
{:regexp=>/Copyright \(c\) [\d]+ - [\d]+ Citrix Systems, Inc. All Rights Reserved./},
{:search=>"all", :text=>'Citrix Metaframe'},
{:text=>"<title>MetaFrame Presentation Server Log In</title>"},
{:text=>'Citrix/MetaFrame'},
{:text=>'window.location="/Citrix/MetaFrame";'},
]
end