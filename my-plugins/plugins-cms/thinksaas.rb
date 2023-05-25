Plugin.define do
name "thinksaas"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<a target="_blank" class="text-secondary" title="\s*\S*" href="https:\/\/www.thinksaas.cn\/">ThinkSAAS<\/a>/},
{:text=>'/app/home/skins/default/style.css'},
{:text=>'<meta name="Copyright" content="ThinkSAAS">'},
{:text=>'<meta name="author" content="qiujun@thinksaas.cn">'},
]
end