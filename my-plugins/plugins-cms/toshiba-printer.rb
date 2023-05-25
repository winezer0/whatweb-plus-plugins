Plugin.define do
name "toshiba-printer"
authors [
"Andrew Horton",
]
version "0.2"
description "Toshiba printer Top Access"
matches [
{:search=>"all", :text=>'TOSHIBA Printer'},
{:text=>'<TITLE CLASS="clsTitle1">TopAccess</title>'},
]
end