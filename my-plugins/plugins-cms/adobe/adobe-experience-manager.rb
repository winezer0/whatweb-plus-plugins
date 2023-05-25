Plugin.define do
name "adobe-experience-manager"
authors [
"Chad Brigance @ChadBrigance","wh1tenoise @wh1tenoise2"
]
version "0.1"
description "Adobe Experience Manager is an enterprise Content Management System (CMS) by Adobe."
website "https://www.adobe.com/marketing/experience-manager.html"
dorks [
'inurl:/libs/granite/core/content/login.html "Welcome to Adobe Experience Manager"'
]
matches [
{:name=>"/etc.clientlibs/", :regexp=>/<script type="text\/javascript" src="\/etc\.clientlibs\//},
{:name=>"/etc/clientlibs/", :regexp=>/<script type="text\/javascript" src="\/etc\/clientlibs\//},
{:name=>"/etc/designs/", :regexp=>/<script type="text\/javascript" src="\/etc\/designs\//},
{:name=>"div class aem-Grid", :regexp=>/<div class=\"[^\"]*aem-Grid/},
{:name=>"div class parbase", :regexp=>/<div class=\"[^\"]*parbase/},
{:name=>"div data-component-path jcr", :regexp=>/<div[^>]+data-component-path=\"[^\"+]jcr:/},
{:regexp=>/.etc.designs./, :search=>'body'},
{:regexp=>/.etc\.clientlibs./, :search=>'body'},
{:regexp=>/<div class="[^"]*aem-Grid/},
{:regexp=>/<div class="[^"]*parbase/},
{:regexp=>/<div[^>]+data-component-path="[^"+]jcr:/},
{:search=>"all", :text=>'Adobe Experience Manager'},
{:search=>'body', :regexp=>/.etc.clientlibs./},
]
end