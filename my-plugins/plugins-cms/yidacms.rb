Plugin.define do
name "yidacms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<span>E-MAIL\s*\S*ceo@yidacms.com<\/span>/},
{:text=>'<input name="yidacms_search" type="hidden" value="yidacms">'},
{:text=>'<li class="yidacms_qqtop">'},
{:text=>'<meta name="Author" content="www.yidacms.com">'},
{:text=>'yidacms.css'},
{:url=>'/images/qq/1.gif', :md5=>'172e8b2cc69611ab3f4ec9c81f80b56a'},
{:url=>'/images/yi.png', :md5=>'b5579af7bdd4d85bbf3e6aa8affed658'},
{:url=>'/inc/qq.js', :md5=>'479786c6ea28d97a1cb2d59ef9b6980d'},
]
end