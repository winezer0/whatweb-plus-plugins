Plugin.define do
name "My-Yii"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<a href="http:\/\/www.yiiframework.com\/" rel="external">Yii/},
]
end