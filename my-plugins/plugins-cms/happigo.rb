Plugin.define do
name "Happigo"
authors ["winezer0"]
version "0.1"
description "快乐购物2005年底由湖南广播影视集团与湖南卫视联合注资亿元成立，2006年3月由合资公司湖南快乐购物股份有限公司开业运营。快乐购从“电视百货、连锁经营”起步，定位“媒体零售、电子商务”，致力跨行业、跨媒体、跨地区发展，十二年来成长为国内新一代家庭购物行业领军者。"
website "http://www.happigo.com"
matches [
{:text=>"var SITEURL = 'http://www.happigo.com/shop';
var SHOP_SITE_URL = 'http://www.happigo.com/shop';
var RESOURCE_SITE_URL = 'http://ecimg.happigo.com/resource';
var SHOP_TEMPLATES_URL = 'http://www.happigo.com/shop/templates/default';
var SHOP_LOGIN_URL = 'http://www.happigo.com/login/';"},
]
end