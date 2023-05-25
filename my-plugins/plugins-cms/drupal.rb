Plugin.define do
name "Drupal"
authors [
"Andrew Horton",

"Brendan Coles <bcoles@gmail.com>", 

"Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.4"
description "Drupal is an opensource CMS written in PHP."
website "http://www.drupal.org"
dorks [
'inurl:/user/register "Powered by Drupal"'
]
matches [
{:certainty=>75, :text=>'Drupal.extend('},
{:mmh3=>'-167656799'},
{:mmh3=>'1174841451'},
{:mmh3=>'1747282642'},
{:module=>"Mobile Plugin", :name=>"Mobile Plugin Cookie", :search=>"headers[set-cookie]", :regexp=>/mobileplugin_group=/},
{:name=>"SESS Drupal Cookie", :certainty=>75, :search=>"headers[set-cookie]", :regexp=>/^SESS[a-z0-9]{32}=[a-z0-9]{32}/},
{:name=>"SSESS Drupal Cookie", :certainty=>75, :search=>"headers[set-cookie]", :regexp=>/^SSESS[a-z0-9]{32}=[a-z0-9]{32}/},
{:offset=>1, :search=>'body', :regexp=>/^Drupal(?:\s([\d.]+))?/},
{:offset=>1, :search=>'headers[x-generator]', :regexp=>/^Drupal(?:\s([\d.]+))?/},
{:regexp=>/19 Nov 1978/, :search=>'headers[expires]'},
{:regexp=>/<(?:link|style)[^>]+".sites.(?:default|all).(?:themes|modules)./},
{:regexp=>/<[^>]+alt="Powered by Drupal, an open source content management system"/},
{:regexp=>/<script type="text\/javascript" src="[^\"]*\/misc\/drupal.js[^\"]*"><\/script>/},
{:regexp=>/@import "[^\"]*\/misc\/drupal.css"/},
{:regexp=>/href="https:\/\/www.drupal.org"|data-drupal-link-system-path="(.*)/},
{:search=>"headers", :text=>'X-Generator: Drupal'},
{:search=>"headers[x-drupal-cache]", :regexp=>/(HIT|MISS)/},
{:search=>'body', :regexp=>/drupal\.js/},
{:text=>'/sites/all/modules/'},
{:text=>'/sites/all/themes/")'},
{:text=>'content="Drupal'},
{:text=>'jQuery.extend(Drupal.settings'},
{:url=>"/favicon.ico",:allhash=>"a4819787db1dabe1a6b669d5d6df3bfd"},
{:url=>"/favicon.ico",:allhash=>"b6341dfc213100c61db4fb8775878cec"},
{:url=>"/favicon.ico",:allhash=>"e6a9dc66179d8c9f34288b16a02f987e"},
{:url=>"/favicon.ico",:allhash=>"f0ee98b4394dfdab17c16245dd799204"},
{:url=>'/.editorconfig', :text=>'drupal'},
{:url=>'/.gitattributes', :text=>'drupal'},
{:url=>'/.htaccess', :md5=>'829f15436ace158a3bc822fb2216d212'},
{:url=>'/.htaccess', :text=>'drupal'},
{:url=>'/CHANGELOG.txt', :text=>'drupal'},
{:url=>'/COPYRIGHT.txt', :text=>'drupal'},
{:url=>'/INSTALL', :text=>'drupal'},
{:url=>'/INSTALL.mysql.txt', :text=>'drupal'},
{:url=>'/INSTALL.pgsql.txt', :text=>'drupal'},
{:url=>'/INSTALL.sqlite.txt', :text=>'drupal'},
{:url=>'/INSTALL.txt', :text=>'drupal'},
{:url=>'/MAINTAINERS', :text=>'drupal'},
{:url=>'/MAINTAINERS.txt', :text=>'drupal'},
{:url=>'/README.txt', :md5=>'8f4c21ec60e18ab8a3eb81b97c712da5'},
{:url=>'/README.txt', :text=>'drupal'},
{:url=>'/UPGRADE.txt', :text=>'drupal'},
{:url=>'/core/CHANGELOG.txt', :text=>'drupal'},
{:url=>'/core/vendor/README.txt', :text=>'drupal'},
{:url=>'/example.gitignore', :text=>'drupal'},
{:url=>'/misc/ajax.js', :text=>'drupal'},
{:url=>'/modules/README.txt', :text=>'drupal'},
{:url=>'/modules/legacy/legacy.info', :text=>'drupal'},
{:url=>'/modules/user/user.info', :text=>'drupal'},
{:url=>'/profiles/README.txt', :text=>'drupal'},
{:url=>'/scripts/test.script', :text=>'drupal'},
{:url=>'/sites/README.txt', :text=>'drupal'},
{:url=>'/sites/all/README.txt', :text=>'drupal'},
{:url=>'/sites/all/modules/README.txt', :text=>'drupal'},
{:url=>'/sites/all/themes/README.txt', :text=>'drupal'},
{:url=>'/themes/README.txt', :md5=>'5954fc62ae964539bb3586a1e4cb172a'},
{:url=>'/themes/README.txt', :md5=>'afa129b3ed3028a3caffa545e2bbf6e5'},
{:url=>'/themes/README.txt', :text=>'drupal'},
{:url=>'/themes/bartik/color/preview.js', :text=>'drupal'},
{:url=>'/themes/tests/README.txt', :text=>'drupal'},
]
aggressive do
m=[]
versions = Hash["2.0.0" =>
[["misc/CVS/Tag",
"3b89028c0366db9136a3163ae3c55387"]],

"4.2.0" =>

[["misc/drupal.css",
"049b663495feb2dd2711cd15ced57c33"]],

"4.2.0-rc" =>

[["misc/drupal.css",
"049b663495feb2dd2711cd15ced57c33"]],

"4.3.0" =>

[["misc/drupal.css",
"86ee0ad8c19c96802f58f7d3c80a1bfa"],

["CHANGELOG",
"ed164bdd285b9d1738edbff790ec49f7"]],

"4.3.1" =>

[["misc/drupal.css",
"86ee0ad8c19c96802f58f7d3c80a1bfa"],

["CHANGELOG",
"1ed2971d163cf1502d3966cdc5f15ffc"]],

"4.3.2" =>

[["misc/drupal.css",
"86ee0ad8c19c96802f58f7d3c80a1bfa"],

["CHANGELOG",
"98936a45ae2a9b490cad8b5a9d7fb1a3"]],

"4.4.0" =>

[["misc/drupal.css",
"1ac2a22c7c0ce23abe186d76c4d251c3"],

["CHANGELOG.txt",
"0335bf973d601188b391c70f04ca7243"]],

"4.4.1" =>

[["misc/drupal.css",
"1ac2a22c7c0ce23abe186d76c4d251c3"],

["CHANGELOG.txt",
"e06199cb4d74df14476d92a38fffbfd2"]],

"4.4.2" =>

[["misc/drupal.css",
"1ac2a22c7c0ce23abe186d76c4d251c3"],

["CHANGELOG.txt",
"02261a2b1b4f00788fd11a87e360ef60"]],

"4.4.3" =>

[["misc/drupal.css",
"1ac2a22c7c0ce23abe186d76c4d251c3"],

["CHANGELOG.txt",
"fff84a431aa4a4b92c10cc300274b296"]],

"4.5.0" =>

[["misc/drupal.css",
"b9034cf9306d869c36616c5813eef31c"],

["CHANGELOG.txt",
"4b3b0e140b04b78c9883dd0569df634e"]],

"4.5.1" =>

[["misc/drupal.css",
"b9034cf9306d869c36616c5813eef31c"],

["CHANGELOG.txt",
"3e4147f889ce96e1f39b3ec35d36364b"]],

"4.5.2" =>

[["misc/drupal.css",
"041b90405d369eb5953ebf39317b94a3"],

["CHANGELOG.txt",
"d8221dd2d4aaa48372f369a3b500f8ac"]],

"4.5.3" =>

[["misc/drupal.css",
"041b90405d369eb5953ebf39317b94a3"],

["CHANGELOG.txt",
"5ea702655ee43162819c5f50f2d84522"]],

"4.5.4" =>

[["misc/drupal.css",
"041b90405d369eb5953ebf39317b94a3"],

["CHANGELOG.txt",
"c0c5d8a5e1d2ad17e2a953290b11adc5"]],

"4.5.5" =>

[["misc/drupal.css",
"041b90405d369eb5953ebf39317b94a3"],

["CHANGELOG.txt",
"47a4875fa1cc74f994933d250bbc3315"]],

"4.5.6" =>

[["misc/drupal.css",
"041b90405d369eb5953ebf39317b94a3"],

["CHANGELOG.txt",
"1626f53faa13239c0f0d82e76b4fb549"]],

"4.5.7" =>

[["misc/drupal.css",
"b690fd502bbd3770508ba9c552f9b8a7"]],

"4.5.8" =>

[["misc/drupal.css",
"041b90405d369eb5953ebf39317b94a3"],

["CHANGELOG.txt",
"f42b699adfb2976a01f8160e63b64e54"]],

"4.6.0" =>

[["misc/drupal.css",
"1e94fde1440a3a5fc3235e85ae4ec264"],

["CHANGELOG.txt",
"9445fe44b1845837a8696521d64dfa75"]],

"4.6.1" =>

[["misc/drupal.css",
"bddf11eb117a1729906797bd22e3436b"],

["CHANGELOG.txt",
"762b2edc5b29b02ca3a4c194ce0daf51"]],

"4.6.2" =>

[["misc/drupal.css",
"bddf11eb117a1729906797bd22e3436b"],

["CHANGELOG.txt",
"82abbc19f30144702216fe2607c21292"]],

"4.6.3" =>

[["misc/drupal.css",
"bddf11eb117a1729906797bd22e3436b"],

["CHANGELOG.txt",
"312bb1bffc81872f4c12c53670ac2bf8"]],

"4.6.4" =>

[["misc/drupal.css",
"bddf11eb117a1729906797bd22e3436b"],

["CHANGELOG.txt",
"07835864d00725c66c6da57abf89b6f7"]],

"4.6.5" =>

[["misc/drupal.css",
"94c5a7d8807b9ea6a6123751f3b6ab9d"],

["CHANGELOG.txt",
"42fe92f314cdf557996f78a215721c61"]],

"4.6.6" =>

[["misc/drupal.css",
"bddf11eb117a1729906797bd22e3436b"],

["CHANGELOG.txt",
"a5cbbd153d04581cf6143a8c8d03ba97"]],

"4.6.7" =>

[["misc/drupal.css",
"bddf11eb117a1729906797bd22e3436b"],

["CHANGELOG.txt",
"3d8d75809df039d322f9f53cee62559d"]],

"4.6.8" =>

[["misc/drupal.css",
"bddf11eb117a1729906797bd22e3436b"],

["CHANGELOG.txt",
"117a28f0c801ada9e20cc13fdac980b6"]],

"4.6.9" =>

[["misc/drupal.css",
"bddf11eb117a1729906797bd22e3436b"],

["CHANGELOG.txt",
"d874b4796e56c1c474914cb971e8a665"]],

"4.7.0" =>

[["misc/drupal.css",
"4dede1e52c41cbdbc81889375e0a9728"],

["CHANGELOG.txt",
"becc2288fb70089d0ba29835bd69cf7a"]],

"4.7.0-beta3" =>

[["misc/drupal.js",
"f151220aded688adf35c623a17a0147a"],

["CHANGELOG.txt",
"1019508b79cf21f522ff76e4a030e552"]],

"4.7.0-beta4" =>

[["misc/drupal.js",
"476482ca90e5ba941b43cdfbde04d03c"],

["CHANGELOG.txt",
"708f0a1075cad3cbd488ef99e27928ff"]],

"4.7.0-beta5" =>

[["misc/drupal.css",
"e89eec8214eb000899279e49470da4cc"],

["CHANGELOG.txt",
"708f0a1075cad3cbd488ef99e27928ff"]],

"4.7.0-beta6" =>

[["misc/drupal.css",
"106c3de80afec82dc572dddcd6fec44f"],

["CHANGELOG.txt",
"708f0a1075cad3cbd488ef99e27928ff"]],

"4.7.0-rc1" =>

[["misc/drupal.js",
"179dc761149f23569d95011cc816e981"],

["CHANGELOG.txt",
"4df953db89dece82a44a64f7f8286d48"]],

"4.7.0-rc2" =>

[["misc/drupal.css",
"4df953db89dece82a44a64f7f8286d48"]],

"4.7.1" =>

[["misc/drupal.js",
"dc0fbe017fd1cc3d97b8c12bc45dde41"],

["CHANGELOG.txt",
"46803ea216fe48bdfcbe7adaa4a09e4a"]],

"4.7.2" =>

[["CHANGELOG.txt",
"9f02188540e0ffde08a627dbe061f533"]],

"4.7.3" =>

[["CHANGELOG.txt",
"2a7b8a6fe32929be66520aeb43c6efd0"]],

"4.7.4" =>

[["misc/drupal.js",
"3130d555431177091ff7ac5b4f3fe19e"],

["CHANGELOG.txt",
"e6d4b383abc73ffd3280855d94da7100"]],

"4.7.5" =>

[["CHANGELOG.txt",
"f9981714ea6f071056c471e600be0727"]],

"4.7.6" =>

[["CHANGELOG.txt",
"ac05ff02fc29e420ca75a537e17ad4ef"]],

"4.7.7" =>

[["CHANGELOG.txt",
"a216343121a81a126da75e10c465a1da"]],

"4.7.8" =>

[["CHANGELOG.txt",
"cd68b6f4f1b5102991de0a00eb2545e7"]],

"4.7.9" =>

[["CHANGELOG.txt",
"e88b68a777b3da8635f1e498157a66c4"]],

"5.0-beta1" =>

[["misc/collapse.js",
"0c9ec12f6e197f5dfb99efa9f72b5fac"],

["CHANGELOG.txt",
"88c3ad0b680e391ffa22d93b836dc29f"]],

"5.0-beta2" =>

[["misc/collapse.js",
"d3a1514d2c8ee27e23cf203208db784b"],

["CHANGELOG.txt",
"9732141c20634caf74fd54b008e6d03c"]],

"5.0" =>

[["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["COLLAPSE.txt",
"c9ef6f2e003a51bf2d717bf18533449d"]],

"5.1" =>

[["misc/drupal.js",
"afd188dc6cd982d37463209679ab01ec"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"b906d4ce7664cab5cc0e0aadbcd73b81"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"f6461f239f68fca689ea44c090039b81"],

["CHANGELOG.txt",
"f50c5a74726abac86c2c79a58536ec4b"]],

"5.2" =>

[["misc/drupal.js",
"9e557006e956d365119eb2ebd2169051"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6]"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"3120bfcbe1ce6c29c50d28d70cca8f2f"]],

"5.3" =>

[["misc/drupal.js",
"9e557006e956d365119eb2ebd2169051"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"ac3186c741a06d83024d7e4aaf06a8df"]],

"5.4" =>

[["misc/drupal.js",
"9e557006e956d365119eb2ebd2169051"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"3a79f3fccf6a64381059cbd480500c7b"]],

"5.5" =>

[["misc/drupal.js",
"9e557006e956d365119eb2ebd2169051"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"8e467aab453093341be996513a03fa92"]],

"5.6" =>

[["misc/drupal.js",
"9e557006e956d365119eb2ebd2169051"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"f24d07bd8997283d678fd6ad908f780c"]],

"5.7" =>

[["misc/drupal.js",
"9e557006e956d365119eb2ebd2169051"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"c4895824937b78bea640578538dfd2a9"]],

"5.8" =>

[["misc/drupal.js",
"9e557006e956d365119eb2ebd2169051"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"92fc900b6072496b2ffa8da42cc24bf3"]],

"5.9" =>

[["misc/drupal.js",
"9e557006e956d365119eb2ebd2169051"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"c169204646e20d06114249a4a3d960fc"]],

"5.10" =>

[["misc/drupal.js",
"2c5e4277fec6afac333e913744e0408f"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"194573574fa000fa693eee0c9dd34a3e"]],

"5.11" =>

[["misc/drupal.js",
"2c5e4277fec6afac333e913744e0408f"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"a953f90ddd4db79c9f49c012df55dd77"]],

"5.12" =>

[["misc/drupal.js",
"2c5e4277fec6afac333e913744e0408f"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"c2bf440209fefc55ceeb3c03865392ec"]],

"5.13" =>

[["misc/drupal.js",
"2c5e4277fec6afac333e913744e0408f"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"cff5e5fd88b0a22ee21559ebb201df2a"]],

"5.14" =>

[["misc/drupal.js",
"2c5e4277fec6afac333e913744e0408f"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"4873ba00881268d04cffba0a82060ffc"]],

"5.15" =>

[["misc/drupal.js",
"2c5e4277fec6afac333e913744e0408f"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"c0a73dda8845d636ab7932f7d6542d61"]],

"5.16" =>

[["misc/drupal.js",
"2c5e4277fec6afac333e913744e0408f"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"cf59d099296ce4d5c978135f7a975a8d"]],

"5.17" =>

[["misc/drupal.js",
"4677b027fed107133090dabccee2b4f5"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"ce3a480b2da212dfaaae686448a5ebc5"]],

"5.18" =>

[["misc/drupal.js",
"4677b027fed107133090dabccee2b4f5"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"4aab0f029007b5365ab7f4e00e51cb20"]],

"5.19" =>

[["misc/drupal.js",
"4677b027fed107133090dabccee2b4f5"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"f1b0e32674fd8fa5d6295eb12bd4a67b"]],

"5.20" =>

[["misc/drupal.js",
"4677b027fed107133090dabccee2b4f5"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"42e1490702cabe0ecb124342a7084161"]],

"5.21" =>

[["misc/drupal.js",
"4677b027fed107133090dabccee2b4f5"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"3a8040276f2aa716721699d325b035ca"]],

"5.22" =>

[["misc/drupal.js",
"4677b027fed107133090dabccee2b4f5"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"e351ca8420e3221c1f7db554ca21911b"]],

"5.23" =>

[["misc/drupal.js",
"4677b027fed107133090dabccee2b4f5"],

["misc/autocomplete.js",
"bb9da274dffe44db11c6e2d197170961"],

["misc/collapse.js",
"505008f3f3443234c293601d9a513afc"],

["misc/textarea.js",
"ac2c41ecba7bbd837bc70963f5610aa9"],

["misc/progress.js",
"3d9bc2d85f06040266110438abb4d30b"],

["misc/jquery.js",
"22f97a73d88b69276ef0dc62c42c69b6"],

["misc/farbtastic/farbtastic.js",
"941c669986f4ff75adc6bb57cf81aae6"],

["misc/farbtastic/farbtastic.css",
"8f9555f25fb258e78aeca92080b5cc3f"],

["CHANGELOG.txt",
"1099db3cfaad8260a8422bdf973024d2"]],

"6.0" =>

[["misc/jquery.form.js",
"684e359f867fa615136be51b423f69d3"],

["misc/tabledrag.js",
"effdd8385a29d33a2ee7e40832e30299"],

["misc/drupal.js",
"ebbcc0156242a08a25c596432ca92f67"],

["misc/ahah.js",
"082f5208102315b0ec105629521ff901"],

["CHANGELOG.txt",
"222f47795c5a48909376cef9728b3652"]],

"6.0-beta1" =>

[["misc/drupal.js",
"1c264213d843edbb232494511a1041b9"],

["misc/ahah.js",
"916eedccc1bc10c83a7c055bd7fff020"],

["CHANGELOG.txt",
"e75604af7e0dc5241b6f70fd18565c19"]],

"6.0-beta2" =>

[["misc/jquery.form.js",
"b49d7d6de33591afd21b8d9831bcaf97"],

["misc/ahah.js",
"8d64ddef22b8ada49160522ace24cde2"],

["misc/drupal.js",
"e383c0fdd397c0f12d57fdf6dd9c4ab0"],

["CHANGELOG.txt",
"73a6fd744bc9b313a2363c3870f2b7e0"]],

"6.0-beta3" =>

[["misc/jquery.form.js",
"684e359f867fa615136be51b423f69d3"],

["misc/tabledrag.js",
"08f53c913abdd4287d4d829545a94b96"],

["misc/drupal.js",
"e383c0fdd397c0f12d57fdf6dd9c4ab0"],

["misc/ahah.js",
"ba782ca2ac71d2734ae06e24ebda093f"],

["CHANGELOG.txt",
"402744b27528c63fa4e55f63d29c0e9e"]],

"6.0-beta4" =>

[["misc/jquery.form.js",
"684e359f867fa615136be51b423f69d3"],

["misc/tabledrag.js",
"73efc1a53fa2019a66a426610e7ddc24"],

["misc/drupal.js",
"e383c0fdd397c0f12d57fdf6dd9c4ab0"],

["misc/ahah.js",
"ba782ca2ac71d2734ae06e24ebda093f"],

["CHANGELOG.txt",
"b4a15cbcab333af135c831af0fdafe01"]],

"6.0-rc1" =>

[["CHANGELOG.txt",
"b942212dc515972564ac6356f8e6b033"],

["misc/tabledrag.js",
"c6f7a28ffd7288909b207c0eb651298e"],

["misc/tableheader.js",
"da96f76a7fef73f09e12ca207602a909"],

["misc/drupal.js",
"e383c0fdd397c0f12d57fdf6dd9c4ab0"]],

"6.0-rc2" =>

[["misc/tableheader.js",
"7db0d737562f9344cc9b04b1d3a242ce"],

["misc/tabledrag.js",
"c6f7a28ffd7288909b207c0eb651298e"],

["misc/drupal.js",
"7082fbcedd60f675111cfa387dd59b00"],

["CHANGELOG.txt",
"b942212dc515972564ac6356f8e6b033"]],

"6.0-rc3" =>

[["misc/tableheader.js",
"21d44d10b1c7a7f00989a641ea501e86"],

["misc/tabledrag.js",
"c6f7a28ffd7288909b207c0eb651298e"],

["misc/drupal.js",
"7082fbcedd60f675111cfa387dd59b00"],

["CHANGELOG.txt",
"c559dcef9854f1d6799b92bde24c37c7"]],

"6.0-rc4" =>

[["misc/tableheader.js",
"21d44d10b1c7a7f00989a641ea501e86"],

["misc/drupal.js",
"ebbcc0156242a08a25c596432ca92f67"],

["misc/tabledrag.js",
"effdd8385a29d33a2ee7e40832e30299"],

["CHANGELOG.txt",
"924aea956dc8184a3346d6ce77af159a"]],

"6.1" =>

[["misc/tabledrag.js",
"effdd8385a29d33a2ee7e40832e30299"],

["misc/tableheader.js",
"21d44d10b1c7a7f00989a641ea501e86"],

["misc/drupal.js",
"2ff7dc985e57d1139ce4dc844b06bc64"],

["CHANGELOG.txt",
"e1eb1056c0ba8dd5302d64ea468ea7d0"]],

"6.2" =>

[["misc/tabledrag.js",
"effdd8385a29d33a2ee7e40832e30299"],

["misc/tableheader.js",
"21d44d10b1c7a7f00989a641ea501e86"],

["misc/drupal.js",
"2ff7dc985e57d1139ce4dc844b06bc64"],

["CHANGELOG.txt",
"efa6e411bb61444c020e931c4543b2f6"]],

"6.3" =>

[["misc/tabledrag.js",
"a35ae83b4bd44d16623babf454beb16f"],

["misc/tableheader.js",
"21d44d10b1c7a7f00989a641ea501e86"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["CHANGELOG.txt",
"d46048e276a7f523ae1475b465bb6dbc"]],

"6.4" =>

[["misc/tabledrag.js",
"a35ae83b4bd44d16623babf454beb16f"],

["misc/tableheader.js",
"21d44d10b1c7a7f00989a641ea501e86"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["CHANGELOG.txt",
"2f7fd8d84e99e61873fb06082a98a550"]],

"6.5" =>

[["CHANGELOG.txt",
"92306257e7bd195b662d851b6857c0db"],

["misc/tableheader.js",
"eb95de9fb83daf5f013a4e73414e5a7e"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["misc/tabledrag.js",
"74d381ff5eff8bd9f6b698c6211a8f90"]],

"6.6" =>

[["CHANGELOG.txt",
"33ab8648bf45397b455d665219beae54"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["misc/tabledrag.js",
"74d381ff5eff8bd9f6b698c6211a8f90"],

["misc/tableheader.js",
"eb95de9fb83daf5f013a4e73414e5a7e"]],

"6.7" =>

[["CHANGELOG.txt",
"6b94ca6e5c3daa847f3d24979b841973"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["misc/tabledrag.js",
"74d381ff5eff8bd9f6b698c6211a8f90"],

["misc/tableheader.js",
"eb95de9fb83daf5f013a4e73414e5a7e"]],

"6.8" =>

[["CHANGELOG.txt",
"90a55f1aaa3e31ed4736bee56ffde496"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["misc/tabledrag.js",
"74d381ff5eff8bd9f6b698c6211a8f90"],

["misc/tableheader.js",
"eb95de9fb83daf5f013a4e73414e5a7e"]],

"6.9" =>

[["CHANGELOG.txt",
"b854e8a96bd5b95dd4285c155878a990"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["misc/tabledrag.js",
"74d381ff5eff8bd9f6b698c6211a8f90"],

["misc/tableheader.js",
"eb95de9fb83daf5f013a4e73414e5a7e"]],

"6.10" =>

[["CHANGELOG.txt",
"9d3546e991ffba015a6b57ce445caf03"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["misc/tabledrag.js",
"74d381ff5eff8bd9f6b698c6211a8f90"],

["misc/tableheader.js",
"eb95de9fb83daf5f013a4e73414e5a7e"]],

"6.11" =>

[["CHANGELOG.txt",
"7e3cfdd79d80ab13517d784d8ad6a0b1"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["misc/tabledrag.js",
"74d381ff5eff8bd9f6b698c6211a8f90"],

["misc/tableheader.js",
"9f42b75075f35fbe361ea1f0da81cba8"]],

"6.12" =>

[["CHANGELOG.txt",
"6d02acfa1a7f0856876d4c72706435d7"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["misc/tabledrag.js",
"74d381ff5eff8bd9f6b698c6211a8f90"],

["misc/tableheader.js",
"9f42b75075f35fbe361ea1f0da81cba8"]],

"6.13" =>

[["CHANGELOG.txt",
"236916121a511de71b3ed271a7a9742c"],

["misc/drupal.js",
"398b3832c2de0a0ebd08cb7f2afe1545"],

["misc/tabledrag.js",
"920423353d7d0edff3c6b3fec57afd73"],

["misc/tableheader.js",
"9f42b75075f35fbe361ea1f0da81cba8"]],

"6.14" =>

[["CHANGELOG.txt",
"41339a8f92c0b18bd02a5e9f93e1252b"],

["misc/drupal.js",
"88682723723be277fb57c0d8e341c0cf"],

["misc/tabledrag.js",
"920423353d7d0edff3c6b3fec57afd73"],

["misc/tableheader.js",
"9f42b75075f35fbe361ea1f0da81cba8"]],

"6.15" =>

[["CHANGELOG.txt",
"79d4bfe249a6f0af26260be1aac06525"],

["misc/drupal.js",
"88682723723be277fb57c0d8e341c0cf"],

["misc/tabledrag.js",
"920423353d7d0edff3c6b3fec57afd73"],

["misc/tableheader.js",
"9f42b75075f35fbe361ea1f0da81cba8"]],

"6.16" =>

[["CHANGELOG.txt",
"bcc6c6f2db3da0ae13908ba1e144b070"],

["misc/drupal.js",
"88682723723be277fb57c0d8e341c0cf"],

["misc/tabledrag.js",
"920423353d7d0edff3c6b3fec57afd73"],

["misc/tableheader.js",
"9f42b75075f35fbe361ea1f0da81cba8"]],

"6.17" =>

[["CHANGELOG.txt",
"9cc81e3da698f965b95df9f8ff3cd16f"],

["misc/drupal.js",
"88682723723be277fb57c0d8e341c0cf"],

["misc/tabledrag.js",
"920423353d7d0edff3c6b3fec57afd73"],

["misc/tableheader.js",
"30fc044386f0056037bf7a0a697a9712"]],

"6.18" =>

[["CHANGELOG.txt",
"d1f718b79968e1d174bb91a9ee763998"],

["misc/drupal.js",
"88682723723be277fb57c0d8e341c0cf"],

["misc/tabledrag.js",
"920423353d7d0edff3c6b3fec57afd73"],

["misc/tableheader.js",
"9f42b75075f35fbe361ea1f0da81cba8"]],

"6.19" =>

[["CHANGELOG.txt",
"004477c0cfaaa7a589a7d85b2cc505fa"],

["misc/drupal.js",
"88682723723be277fb57c0d8e341c0cf"],

["misc/tabledrag.js",
"920423353d7d0edff3c6b3fec57afd73"],

["misc/tableheader.js",
"9f42b75075f35fbe361ea1f0da81cba8"]],

"6.20" =>

[["CHANGELOG.txt",
"b54c033af08c823221535ed0677242ba"],

["misc/drupal.js",
"88682723723be277fb57c0d8e341c0cf"],

["misc/tabledrag.js",
"920423353d7d0edff3c6b3fec57afd73"],

["misc/tableheader.js",
"9f42b75075f35fbe361ea1f0da81cba8"]],

"6.21" =>

[["CHANGELOG.txt",
"f6a6fefda7509ecd7a3dc7eba7e380be"],

["misc/drupal.js",
"9a1c645566d780facee5ce1a0d3fab7c"],

["tabledrag.js",
"a0ba09f9639f03d227306c2bc97c81d4"],

["tableheader.js",
"c31ba3d2e9fee48c7b19f580fe4ce19e"]],

"6.22" =>

[["CHANGELOG.txt",
"6da86d0653cd749b7ef5c59d6560b1f1"],

["misc/drupal.js",
"fe6f8c678cb511d68a3dbe5a94f2e278"],

["tabledrag.js",
"8cb29c5e52430f2b2b14212796271ea2"],

["tableheader.js",
"48e892b6303c82f2103b415d9c0dd00e"]],

"6.23" =>

[["CHANGELOG.txt",
"aeb74a5dbcd3a1adcc0ca8b78449e50f"],

["misc/drupal.js",
"fe6f8c678cb511d68a3dbe5a94f2e278"],

["tabledrag.js",
"8cb29c5e52430f2b2b14212796271ea2"],

["tableheader.js",
"48e892b6303c82f2103b415d9c0dd00e"]],

"6.24" =>

[["CHANGELOG.txt",
"5f493f3c41807aadb2e34e2644d6186e"],

["misc/drupal.js",
"90c0aa7ed8581884c2afe73fc87b5697"],

["tabledrag.js",
"8cb29c5e52430f2b2b14212796271ea2"],

["tableheader.js",
"48e892b6303c82f2103b415d9c0dd00e"]],

"6.25" =>

[["CHANGELOG.txt",
"69067a08b19093a79ba8e620adf9dbe9"],

["misc/drupal.js",
"90c0aa7ed8581884c2afe73fc87b5697"],

["tabledrag.js",
"8cb29c5e52430f2b2b14212796271ea2"],

["tableheader.js",
"48e892b6303c82f2103b415d9c0dd00e"]],

"6.26" =>

[["CHANGELOG.txt",
"fe13f306dc2d18faef0781339205e269"],

["drupal.js",
"90c0aa7ed8581884c2afe73fc87b5697"],

["misc/tabledrag.js",
"50ebbc8dc949d7cb8d4cc5e6e0a6c1ca"],

["misc/tableheader.js",
"48e892b6303c82f2103b415d9c0dd00e"]],

"6.27" =>

[["CHANGELOG.txt",
"fd8f769a1a4a770a9ff0ba4de7094b7a"],

["drupal.js",
"90c0aa7ed8581884c2afe73fc87b5697"],

["misc/tabledrag.js",
"50ebbc8dc949d7cb8d4cc5e6e0a6c1ca"],

["misc/tableheader.js",
"48e892b6303c82f2103b415d9c0dd00e"]],

"6.28" =>

[["CHANGELOG.txt",
"8159c0b8908ab0780207006f509d8297"],

["drupal.js",
"1904f6fd4a4fe747d6b53ca9fd81f848"],

["misc/tabledrag.js",
"50ebbc8dc949d7cb8d4cc5e6e0a6c1ca"],

["misc/tableheader.js",
"570b3f821441cd8f75395224fc43a0ea"]],

"6.29" =>

[["CHANGELOG.txt",
"168eb5e9bdb2c43d62fe5de2ec25eafa"],

["misc/drupal.js",
"1904f6fd4a4fe747d6b53ca9fd81f848"],

["misc/tabledrag.js",
"50ebbc8dc949d7cb8d4cc5e6e0a6c1ca"],

["misc/tableheader.js",
"570b3f821441cd8f75395224fc43a0ea"]],

"6.30" =>

[["CHANGELOG.txt",
"3cedd331b876ec30980aa595964b647c"],

["misc/drupal.js",
"1904f6fd4a4fe747d6b53ca9fd81f848"],

["misc/tabledrag.js",
"50ebbc8dc949d7cb8d4cc5e6e0a6c1ca"],

["misc/tableheader.js",
"3cedd331b876ec30980aa595964b647c"]],

"6.31" =>

[["CHANGELOG.txt",
"d236b109c1f8fae45cf40586cc40e9c2"],

["misc/drupal.js",
"1904f6fd4a4fe747d6b53ca9fd81f848"],

["misc/tabledrag.js",
"50ebbc8dc949d7cb8d4cc5e6e0a6c1ca"],

["misc/tableheader.js",
"d236b109c1f8fae45cf40586cc40e9c2"]],

"7.0-alpha1" =>

[["misc/ajax.js",
"e9705a45006501b9e3ff1bc4fa2c7a37"],

["misc/tabledrag.js",
"31882871abe4350aa37a99e425e8a31e"],

["misc/drupal.js",
"cb392dbb30f9d1f60ad9111ff04ec76f"],

["CHANGELOG.txt",
"5dceb87c7c8783b6371b305a285eea4b"]],

"7.0-alpha2" =>

[["misc/ajax.js",
"51843e1428caddbb170b9868ed729aa5"],

["misc/tabledrag.js",
"31882871abe4350aa37a99e425e8a31e"],

["misc/drupal.js",
"05680a34106d73d6e889b1224f63766b"],

["CHANGELOG.txt",
"46fa5ca038abda95c797ff2338ed8a8f"]],

"7.0-alpha3" =>

[["misc/ajax.js",
"f3608f9042caa10299a1f56ca0dc1a99"],

["misc/tabledrag.js",
"598b64ca1df6360e1220cd76fa7351d1"],

["misc/drupal.js",
"0ae310e4d8055b6a731498bb713428b0"],

["CHANGELOG.txt",
"32c29f96a4044498e7919bb2f07fa384"]],

"7.0-alpha4" =>

[["misc/ajax.js",
"34f0f6758282c32816f996842240f80a"],

["misc/tabledrag.js",
"d76cb74f2216b40f0afdec376537b7ad"],

["misc/drupal.js",
"0ae310e4d8055b6a731498bb713428b0"],

["CHANGELOG.txt",
"b019dd69fb21cbfae8183ef7aa2d1d5e"]],

"7.0-alpha5" =>

[["misc/ajax.js",
"1155100a0e7f6786e33fa9126d4ad582"],

["misc/tabledrag.js",
"5e089afe7918b96a0049e745fcef07fa"],

["misc/drupal.js",
"99c0f9cd366557832418178a475a6c27"],

["CHANGELOG.txt",
"810120469173e7ce0767e4f54d025e88"]],

"7.0-alpha6" =>

[["misc/ajax.js",
"68f0e2b9ed2db6b2cf764aab46d0c3b9"],

["misc/tabledrag.js",
"75758e5701996536fd85962d3f011594"],

["misc/drupal.js",
"20755d880e6103103d3000b05e8f0192"],

["CHANGELOG.txt",
"99525ef80534f758e2d0e4af1797dd8b"]],

"7.0-alpha7" =>

[["misc/ajax.js",
"68f0e2b9ed2db6b2cf764aab46d0c3b9"],

["misc/tabledrag.js",
"8285e986885b7426a3de91bca964c912"],

["misc/drupal.js",
"1c446c2ab39a58ca1dd194e211608a7a"],

["CHANGELOG.txt",
"d672cd026f87486cd6139e1e1b15e570"]],

"7.0-beta1" =>

[["misc/ajax.js",
"a1252fee1f538d85bd7c313c8225a565"],

["misc/tabledrag.js",
"8285e986885b7426a3de91bca964c912"],

["misc/drupal.js",
"1c446c2ab39a58ca1dd194e211608a7a"],

["CHANGELOG.txt",
"2c064b19f0240d5838ac0ae9b0d76336"]],

"7.0-beta2" =>

[["misc/ajax.js",
"591ac9934ab65decec6c379c6840325b"],

["misc/tabledrag.js",
"8285e986885b7426a3de91bca964c912"],

["misc/drupal.js",
"1c446c2ab39a58ca1dd194e211608a7a"],

["CHANGELOG.txt",
"7784d1f30b54933abf74b969d003afa5"]],

"7.0-beta3" =>

[["misc/ajax.js",
"2d42d5483f5e26514c7042ded1e78aa6"],

["misc/tabledrag.js",
"8285e986885b7426a3de91bca964c912"],

["misc/drupal.js",
"1a7f385e8e043cbc4c993cf130d475e2"],

["CHANGELOG.txt",
"5af1565654858c3a7f996a8f79926172"]],

"7.0-rc1" =>

[["misc/ajax.js",
"3abc15f830710e39cfbb73fb99aac9e8"],

["misc/tabledrag.js",
"8285e986885b7426a3de91bca964c912"],

["misc/drupal.js",
"0034d9289a3ec0996a6e9b0a9f40a60c"],

["CHANGELOG.txt",
"002d5e0a7a976238f169d934c0e651af"]],

"7.0-rc2" =>

[["misc/ajax.js",
"9a89c456ae6d8c7f9677ff8d7679f633"],

["misc/tabledrag.js",
"8285e986885b7426a3de91bca964c912"],

["misc/drupal.js",
"0034d9289a3ec0996a6e9b0a9f40a60c"],

["CHANGELOG.txt",
"8a2ec8243001d2e52ef4e64b97bbe030"]],

"7.0-rc3" =>

[["misc/ajax.js",
"7dd50d7491281da4206eb7e7879894a9"],

["misc/tabledrag.js",
"8285e986885b7426a3de91bca964c912"],

["misc/drupal.js",
"0034d9289a3ec0996a6e9b0a9f40a60c"],

["CHANGELOG.txt",
"8a2ec8243001d2e52ef4e64b97bbe030"]],

"7.0-rc4" =>

[["misc/ajax.js",
"7dd50d7491281da4206eb7e7879894a9"],

["misc/tabledrag.js",
"8285e986885b7426a3de91bca964c912"],

["misc/drupal.js",
"0034d9289a3ec0996a6e9b0a9f40a60c"],

["CHANGELOG.txt",
"8a2ec8243001d2e52ef4e64b97bbe030"]],

"7.0" =>

[["misc/ajax.js",
"7dd50d7491281da4206eb7e7879894a9"],

["misc/tabledrag.js",
"8285e986885b7426a3de91bca964c912"],

["misc/drupal.js",
"847afc6e14d280e66a564194e166a66e"],

["CHANGELOG.txt",
"1193b01ba75f425e7cf5be5857562bb6"]],

"7.1" =>

[["misc/ajax.js",
"68128e27dfec89bda87f9ad650a26768"],

["misc/tabledrag.js",
"99c25e3595a25fee7c231d98fb9b9785"],

["misc/drupal.js",
"f3f32021901f4c33d2eebbc634de587d"],

["CHANGELOG.txt",
"cbecaf7c4da3a9503fc7528fc9655ef3"]],

"7.2" =>

[["misc/ajax.js",
"ce09253d1e955e8f806725bd5f5fe7cd"],

["misc/tabledrag.js",
"b071885a5cc7377740f512da46eaae64"],

["misc/drupal.js",
"cea76de12c5bb95dd0789fbd3cd754f0"],

["CHANGELOG.txt",
"f1115ca52f7441b0fb35dbf2d8ceea8a"]],

"7.3" =>

[["misc/ajax.js",
"ce09253d1e955e8f806725bd5f5fe7cd"],

["misc/tabledrag.js",
"b071885a5cc7377740f512da46eaae64"],

["misc/drupal.js",
"cea76de12c5bb95dd0789fbd3cd754f0"],

["CHANGELOG.txt",
"8a405ef6f0956fab84462cbc747bb4ee"]],

"7.4" =>

[["misc/ajax.js",
"ce09253d1e955e8f806725bd5f5fe7cd"],

["misc/tabledrag.js",
"b071885a5cc7377740f512da46eaae64"],

["misc/drupal.js",
"cea76de12c5bb95dd0789fbd3cd754f0]"],

["CHANGELOG.txt",
"7d574236459eba874b0a0b45a0269251"]],

"7.5" =>

[["misc/ajax.js",
"ce09253d1e955e8f806725bd5f5fe7cd"],

["misc/tabledrag.js",
"b071885a5cc7377740f512da46eaae64"],

["misc/drupal.js",
"cea76de12c5bb95dd0789fbd3cd754f0]"],

["CHANGELOG.txt",
"3dea36f6e8d7cad2ea47d5829917f62c"]],

"7.6" =>

[["misc/ajax.js",
"b807d0ddb3ff3064f08d43f8ec3759e6"],

["misc/tabledrag.js",
"b071885a5cc7377740f512da46eaae64"],

["misc/drupal.js",
"cea76de12c5bb95dd0789fbd3cd754f0]"],

["CHANGELOG.txt",
"3dea36f6e8d7cad2ea47d5829917f62c"]],

"7.7" =>

[["misc/ajax.js",
"b807d0ddb3ff3064f08d43f8ec3759e6"],

["misc/tabledrag.js",
"b071885a5cc7377740f512da46eaae64"],

["misc/drupal.js",
"cea76de12c5bb95dd0789fbd3cd754f0]"],

["CHANGELOG.txt",
"2e1049b34cf095563cff4a1ab85b99c2"]],

"7.8" =>

[["misc/ajax.js",
"b807d0ddb3ff3064f08d43f8ec3759e6"],

["misc/tabledrag.js",
"8841f19d31bfe03bc1876c35bd03d337"],

["misc/drupal.js",
"cea76de12c5bb95dd0789fbd3cd754f0]"],

["CHANGELOG.txt",
"767cff2a1756be6db518b8cb9c360f5c"]],

"7.9" =>

[["misc/ajax.js",
"b807d0ddb3ff3064f08d43f8ec3759e6"],

["misc/tabledrag.js",
"8841f19d31bfe03bc1876c35bd03d337"],

["misc/drupal.js",
"d4515f21acd461ca04304233bf0daa1e"],

["CHANGELOG.txt",
"05c35ea41cde4ed14642b8a6f79cc353"]],

"7.10" =>

[["misc/ajax.js",
"b807d0ddb3ff3064f08d43f8ec3759e6"],

["misc/tabledrag.js",
"8841f19d31bfe03bc1876c35bd03d337"],

["misc/drupal.js",
"cbd95e04bad1be13320ebbe63a863245"],

["CHANGELOG.txt",
"c2cecc83ec443b111b09beeb3e525d32"]],

"7.11" =>

[["misc/ajax.js",
"b807d0ddb3ff3064f08d43f8ec3759e6"],

["misc/tabledrag.js",
"8841f19d31bfe03bc1876c35bd03d337"],

["misc/drupal.js",
"d4515f21acd461ca04304233bf0daa1e"],

["CHANGELOG.txt",
"4dcfe6f20e161497b8a8c969f57cf9ae"]],

"7.12" =>

[["misc/ajax.js",
"334703efc42d1a849b675ee70a718853"],

["misc/tabledrag.js",
"8841f19d31bfe03bc1876c35bd03d337"],

["misc/drupal.js",
"f9281a1fa8b926ba038bebc3bb0c3d61"],

["CHANGELOG.txt",
"750fc8fada9ada1044e2f47927771c1b"]],

"7.13" =>

[["misc/ajax.js",
"334703efc42d1a849b675ee70a718853"],

["misc/tabledrag.js",
"8841f19d31bfe03bc1876c35bd03d337"],

["misc/drupal.js",
"f9281a1fa8b926ba038bebc3bb0c3d61"],

["CHANGELOG.txt",
"ca11b070227bcf518e64884a83b7f78e"]],

"7.14" =>

[["misc/ajax.js",
"334703efc42d1a849b675ee70a718853"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"],

["misc/drupal.js",
"f9281a1fa8b926ba038bebc3bb0c3d61"],

["CHANGELOG.txt",
"fa02637f87ad76f18b3b97aed66753d2"]],

"7.15" =>

[["CHANGELOG.txt",
"30ca3761d02c5a025d5caea0e76b43c2"],

["misc/ajax.js",
"334703efc42d1a849b675ee70a718853"],

["misc/drupal.js",
"f9281a1fa8b926ba038bebc3bb0c3d61"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.16" =>

[["CHANGELOG.txt",
"ad2968774051eb5479dc709ce87ba7e2"],

["misc/ajax.js",
"334703efc42d1a849b675ee70a718853"],

["misc/drupal.js",
"f9281a1fa8b926ba038bebc3bb0c3d61"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.17" =>

[["CHANGELOG.txt",
"919a4daf02fad61f623fc2f8ff686640"],

["misc/ajax.js",
"334703efc42d1a849b675ee70a718853"],

["misc/drupal.js",
"f9281a1fa8b926ba038bebc3bb0c3d61"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.18" =>

[["CHANGELOG.txt",
"e4e2ab8f1b84c77e14cb742c8275e906"],

["misc/ajax.js",
"334703efc42d1a849b675ee70a718853"],

["misc/drupal.js",
"f9281a1fa8b926ba038bebc3bb0c3d61"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.19" =>

[["CHANGELOG.txt",
"a6548e2a131e814eb78e0fb5e0170c69"],

["misc/ajax.js",
"334703efc42d1a849b675ee70a718853"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.20" =>

[["CHANGELOG.txt",
"66fb72fce833f76801de24ad24b84377"],

["misc/ajax.js",
"334703efc42d1a849b675ee70a718853"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.21" =>

[["CHANGELOG.txt",
"756587439d2dd9fce15110a2f08620fe"],

["misc/ajax.js",
"334703efc42d1a849b675ee70a718853"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.22" =>

[["CHANGELOG.txt",
"dfd6807a045b68b02964dd8269e50ff7"],

["misc/ajax.js",
"8a57a01ad28f72fedf5bf83dab4f1ece"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.23" =>

[["CHANGELOG.txt",
"33cdc361555923382d4dd72e657ad7bc"],

["misc/ajax.js",
"8a57a01ad28f72fedf5bf83dab4f1ece"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.24" =>

[["CHANGELOG.txt",
"752e21ba08a2d988806034151120cb21"],

["misc/ajax.js",
"8a57a01ad28f72fedf5bf83dab4f1ece"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.25" =>

[["CHANGELOG.txt",
"853320639aec176c29fa58af34e20bef"],

["misc/ajax.js",
"8a57a01ad28f72fedf5bf83dab4f1ece"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.26" =>

[["CHANGELOG.txt",
"da1fdf2e2e07c5492c76759b592da669"],

["misc/ajax.js",
"8a57a01ad28f72fedf5bf83dab4f1ece"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.27" =>

[["CHANGELOG.txt",
"cedcdbb21a0b0946b264fecc48a20703"],

["misc/ajax.js",
"fb2f42e93aa34d26a48c415b46fb2468"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.28" =>

[["CHANGELOG.txt",
"d56858b074520fc947a7739c03031cbc"],

["misc/ajax.js",
"d7a1d3b0e4468342268058e23fa71059"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.29" =>

[["CHANGELOG.txt",
"a73760e71235a045989fce8ed0525b80"],

["misc/ajax.js",
"30d9e08baa11f3836eca00425b550f82"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.30" =>

[["CHANGELOG.txt",
"0dc4dee7ee83ab17bd09ddd73c14e0c0"],

["misc/ajax.js",
"30d9e08baa11f3836eca00425b550f82"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.31" =>

[["CHANGELOG.txt",
"85f9505fcf687b9fd4b55d2e60393436"],

["misc/ajax.js",
"30d9e08baa11f3836eca00425b550f82"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.32" =>

[["CHANGELOG.txt",
"f0add58c8139bdee0e70756b3e5ce3d1"],

["misc/ajax.js",
"30d9e08baa11f3836eca00425b550f82"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.33" =>

[["CHANGELOG.txt",
"4ee104a47fbf9939cade2787e47b2c2a"],

["misc/ajax.js",
"30d9e08baa11f3836eca00425b550f82"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.34" =>

[["CHANGELOG.txt",
"34335e648b3cbd720cc3ed86f88c1d26"],

["misc/ajax.js",
"30d9e08baa11f3836eca00425b550f82"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.35" =>

[["CHANGELOG.txt",
"0ec14c07158a08aab9dda25d1893ab34"],

["misc/ajax.js",
"30d9e08baa11f3836eca00425b550f82"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"caaf444bbba2811b4fa0d5aecfa837e5"]],

"7.36" =>

[["CHANGELOG.txt",
"38ab3c6e309efd8119ff6496ae7cbbc0"],

["misc/ajax.js",
"30d9e08baa11f3836eca00425b550f82"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"c1bdc05ec3eab25853bec452e3addcd2"]],

"7.37" =>

[["CHANGELOG.txt",
"b3a9ba3846e041b02a02855667011e64"],

["misc/ajax.js",
"30d9e08baa11f3836eca00425b550f82"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"c1bdc05ec3eab25853bec452e3addcd2"]],

"7.38" =>

[["CHANGELOG.txt",
"947b04948fd53beab411bd04f4159c4d"],

["misc/ajax.js",
"30d9e08baa11f3836eca00425b550f82"],

["misc/drupal.js",
"0bb055ea361b208072be45e8e004117b"],

["misc/tabledrag.js",
"c1bdc05ec3eab25853bec452e3addcd2"]],

]
v = Version.new("Drupal", versions, @base_uri)
version = v.matches_format
unless version.empty?
version.each do |ver|
m << {:name => "MD5 sums", :version => ver}
end
end
m
end
end
