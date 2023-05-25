Plugin.define do
name "TYPO3"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

"Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

"Janosch Maier @Phylu", 

]
version "0.4"
description "TYPO3 is a free Open Source content management system for enterprise purposes on the web and in intranets. It offers full flexibility and extendability while featuring an accomplished set of ready-made interfaces, functions and modules."
website "http://typo3.com/"
matches [
{:search=>"headers", :text=>'fe_typo_user'},
{:search=>"headers[set-cookie]", :regexp=>/^fe_typo_user/, :name=>"fe_typo_user cookie"},
{:text=>'<!--TYPO3SEARCH_end-->', :certainty=>75},
{:url=>"/favicon.ico",:allhash=>"8718c2998236c796896b725f264092ee"},
{:version=>/<meta name="generator" content="TYPO3 ([\d\.]+) CMS"/},
]
aggressive do
m=[]
files=[
{ :md5=>'fa6bed20b07e72ae7140daf35bf9d194', :version=>'3.3.x', :path=>'t3lib/jsfunc.evalfield.js' },
{ :md5=>'f8cf9f0ee879a5ed1f4cdbda5f66fe42', :version=>'3.5.x', :path=>'t3lib/jsfunc.evalfield.js' },
{ :md5=>'91679c5cebe4dd2d3c6ef41a01252f56', :version=>'3.6.x - 3.8.x', :path=>'t3lib/jsfunc.evalfield.js' },
{ :md5=>'65cdbcbfda7bd1512d61033f22919c04', :version=>'4.0.x', :path=>'t3lib/jsfunc.evalfield.js' },
{ :md5=>'8268823e266152decfb7bb1ba652ab32', :version=>'4.1.x', :path=>'t3lib/jsfunc.evalfield.js' },
{ :md5=>'21ba8e02551157b345885d9aec091ca2', :version=>'4.2.x', :path=>'t3lib/jsfunc.evalfield.js' },
{ :md5=>'efda8e345a6516ea97a8412875e3b100', :version=>'4.3.x', :path=>'t3lib/jsfunc.evalfield.js' },
{ :md5=>'4a464632a5a0865009bdf3d48bacbba9', :version=>'4.4.x', :path=>'t3lib/jsfunc.evalfield.js' },
{ :md5=>'12a91f85007c0deb3f1c798faef7a336', :version=>'4.5.x', :path=>'t3lib/jsfunc.evalfield.js' },
{ :md5=>'7d6f7ccbc4257ca8e0d952e4586a5577', :version=>'6.1.x', :path=>'typo3/js/tree.js' },
{ :md5=>'36741bfbbf60c3ae3370d1fcacafd562', :version=>'6.2.x', :path=>'typo3/js/tree.js' },
{ :md5=>'3287390bce962a070d01f0fbc77e8d98', :version=>'7.0.x', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/DragUploader.js' },
{ :md5=>'688715e7f2b3e34de595083926b1c5d6', :version=>'7.1.x', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/DragUploader.js' },
{ :md5=>'8802bd97763db8c94a46dea8424f8a2f', :version=>'7.2.x', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/DragUploader.js' },
{ :md5=>'033d2c5965493bd599526a2ec6c6b1c2', :version=>'7.3.x', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/DragUploader.js' },
{ :md5=>'e46e25a14c4429e88439ee2ce2cfa8b1', :version=>'7.4.x', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/DragUploader.js' },
{ :md5=>'5a581b85d07fd4ab2e9b319a177e09ae', :version=>'7.5.x', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/DragUploader.js' },
{ :md5=>'5a581b85d07fd4ab2e9b319a177e09ae', :version=>'7.6.0/7.6.1/7.6.2', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/DragUploader.js' },
{ :md5=>'1a59c65788fb35d2ae5ef28aa7ed887a', :version=>'7.6.3/7.6.4', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/DragUploader.js' },
{ :md5=>'51e791e3ac7014583c7d516534991387', :version=>'7.6.5/7.6.6/7.6.7', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/DragUploader.js' },
{ :md5=>'9dbefa9ee5f9ce30f1872e70e27a9604', :version=>'7.6.8/7.6.9', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/FormEngine.js' },
{ :md5=>'ab33f4ab2ee1bdc206736de9ab1e9eeb', :version=>'7.6.10', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/FormEngineSuggest.js' },
{ :md5=>'a6fc92a1274764f2f08d1029f76a730c', :version=>'7.6.11', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/FormEngineSuggest.js' },
{ :md5=>'36fe0df4954b1e3fea9c5a0dc98d9ad6', :version=>'8.0.0', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/FormEngine.js' },
{ :md5=>'4c88b3ea158328242cd6b3f37d40c4e5', :version=>'8.0.1', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/FormEngine.js' },
{ :md5=>'67a2d028d995e1f393450fcf628a6cd4', :version=>'8.1.x', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/FormEngine.js' },
{ :md5=>'142c4e3a8830066cb4cd5843482908d9', :version=>'8.2.0', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/FormEngine.js' },
{ :md5=>'f1bbf914a52ad4a1c046c172b75efb5a', :version=>'8.2.1', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/LoginRefresh.js' },
{ :md5=>'821c0f0e29eb9b95f09cbcc25bc47d38', :version=>'8.3.x', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/LoginRefresh.js' },
{ :md5=>'d18a74b735139ee0eed133fc0867f9b8', :version=>'8.4.0', :path=>'typo3/sysext/backend/Resources/Public/JavaScript/LoginRefresh.js' },
]
to_download = files.map {|x| x[:path]}.sort.uniq
downloads={}
to_download.each do |d|
target = URI.join(@base_uri.to_s,d).to_s	
status,url,ip,body,headers=open_target(target)
downloads[d] = {:md5sum=>Digest::MD5.hexdigest(body).to_s}	
end
version=nil
files.each do |thisfile|
unless downloads[thisfile[:path]].nil?
version=thisfile[:version] if downloads[thisfile[:path]][:md5sum] == thisfile[:md5]
end
end
unless version.nil?
m << {:name=>"md5 sums of files", :version=>version}
end
m
end
end
