Plugin.define do
name "seacms-海洋cms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'seacms'},
{:text=>'Powered by SeaCms'},
{:text=>'content="seacms'},
{:text=>'http://www.seacms.net'},
{:url=>"/data/mark/inc_photowatermark_config.php"},
{:url=>"/include/inc/inc_fun_funAdmin.php",:text=>"Request Error!"},
{:url=>"/zyapi.php"},
]
end