Plugin.define do
name "semcms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<div class="sc_bot_3">CopyRight\s*\S*semcms<script type="text\/javascript" src="https:\/\/js.users.51.la\/19397399.js"><\/script>/},
{:text=>'sc_mid_c_left_c sc_mid_left_bt'},
{:text=>'semcms PHP'},
{:version=>/Powered by <a href="http:\/\/www.sem-cms.com"><b style="color:#F60">semcms PHP (.*)<\/b><\/a>/},
]
end