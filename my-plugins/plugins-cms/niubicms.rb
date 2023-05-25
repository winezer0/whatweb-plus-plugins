Plugin.define do
name "niubicms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'niubicms'},
{:text=>'<br>Powered By <a href="http://www.niubicms.com/" target="_blank">niubicms</a> V1.8'},
{:url=>'/admin/template/images/mainbg.png', :md5=>'fb9a717733de201cf420b258529eb787'},
{:url=>'/statics/ui-jquery/main-nav.png', :md5=>'d814e8687091d87762b4a3dffd9139ce'},
{:url=>'/template/cn/red/hr/article_job.html', :text=>'niubiCMS'},
{:url=>'/template/cn/red/tuan/show.html', :text=>'niubiCMS'},
{:version=>/<meta name="generator" content="niubicms (V.+)">/},
]
end