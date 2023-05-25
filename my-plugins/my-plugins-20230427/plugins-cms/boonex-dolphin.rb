Plugin.define do
name "boonex-dolphin"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BoonEx Dolphin - open-source, downloadable, scalable, customizable, full-featured, independent and free software package for building social networks, dating sites and niche communities."
website "http://www.boonex.com/dolphin"
dorks [
'"Powered by Dolphin - Free Community Software"'
]
matches [
{:regexp=>/<script type="text\/javascript" language="javascript">var aDolLang = \{'_Counter': 'Counter','_PROFILE_ERR': 'Error!\\nYour username or password was incorrect\. Please try again\.'\};<\/script>/},
{:text=>'Powered by                    Dolphin - <a href="http://www.boonex.com/products/dolphin'},
{:text=>'Powered by                    Dolphin - <a href="http://www.boonex.com/products/dolphin/">Free Community Software</a>'},
{:version=>/administration\/templates\/base\/images\/admin_login_admin_logo\.png" alt="Dolphin ([\d]+) Admin" \/>/},
]
end
