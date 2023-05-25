Plugin.define do
name "advance-digitalmg"
authors [
"Elias Dorneles",

"Andrew Horton", 

]
version "0.2"
description "Identifies a news website by Advance Digital MG network"
website "https://www.advancelocal.com/"
matches [
{:name=>"link to user agreement that it's present in the footer",
:regexp=>/href="http:\/\/www.advance.net\/advancedigitalUserAgreementPP\/#opt_out.*Ad Choices/},
]
end
