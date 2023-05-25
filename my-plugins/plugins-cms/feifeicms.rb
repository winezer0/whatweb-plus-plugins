Plugin.define do
name "feifeicms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/var\s*cms\s*=\s*{\s*root:".*?",urlhtml:".*?",sid:".*?",id:".*?",userid:".*?",username:".*?",userforum:".*?",page:".*?",domain_m:".*?"\s*};/},
{:search=>"all", :text=>'FeiFeiCMS'},
{:text=>'id="navbar-feifeicms"'},
{:url=>'/Public/images/admin/bg.gif', :md5=>'eec554048e90135111c489e8ef3c8ff2'},
{:url=>'/Public/images/water.gif', :md5=>'3551aebf90c015773feaef802ed15626'},
{:url=>'/Public/js/admin.js', :text=>'feifeicms'},
{:url=>'/Public/player2.8/web9.js', :text=>'feifeicms'},
{:version=>/<a href="http:\/\/www.feifeicms.com\/" target="_blank">feifeicms (.+)<\/a>/},
]
end