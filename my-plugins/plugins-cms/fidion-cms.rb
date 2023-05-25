Plugin.define do
name "fidion-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'fidion CMS'},
{:search=>"headers", :text=>'fCMS='},
{:text=>'<!-- ================== This site is powered by: ==================== -->'},
{:text=>'<!-- fCMS-Template head.tpl begins -->'},
{:text=>'<!-- fCMS-Template head.tpl begins'},
{:text=>'<!-- | fCMS by fidion GmbH, Wüg.         http://www.fidion.de  | -->'},
]
end