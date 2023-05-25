Plugin.define do
name "3com-officeconnect-wireless-11g"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<META Detect1="Company" CONTENT="3COM">'},
]
end