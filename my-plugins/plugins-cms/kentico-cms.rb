Plugin.define do
name "Kentico-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.2"
description "Kentico CMS for ASP.NET - flexible, all-in-one solution for web developers"
website "http://www.kentico.com/"
matches [
{:offset=>1, :regexp=>/Kentico CMS ([\d.R]+ \(build [\d.]+\))/, :search=>'body'},
{:regexp=>/2fCMSAdministration.aspx" id="form1" class="logon-page"/, :name=>"Admin-Login-Page",  :certainty=>100},
{:search=>"all", :text=>'Kentico CMS'},
{:search=>"headers", :text=>'CMSPreferredCulture'},
{:search=>"headers[set-cookie]", :regexp=>/CMSCsrfCookie/, :name=>"CMSCsrfCookie cookie"},
{:search=>"headers[set-cookie]", :regexp=>/CMSCurrentTheme/, :name=>"CMSCurrentTheme cookie"},
{:search=>"headers[set-cookie]", :regexp=>/CMSPreferredCulture/, :name=>"CMSPreferredCulture cookie"},
{:search=>"headers[set-cookie]", :regexp=>/CMSPreferredCulture=/},
{:search=>'body', :regexp=>/.CMSPages.GetResource\.ashx/},
{:text=>'content="Kentico CMS'},
{:version=>/<\/title><meta name="generator" content="Kentico CMS [^\(^>]{1,5} \(build ([\d\.]{1,10})\) [^"^>]*" \/>/},
]
end