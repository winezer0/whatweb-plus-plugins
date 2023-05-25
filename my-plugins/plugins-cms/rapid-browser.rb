Plugin.define do
name "RAPID-Browser"
authors ["winezer0"]
version "0.1"
description "RAPID Browser - Managing news contents, sharing editorial and publishing to paper, web and mobile."
website "http://www.knowledgeview.co.uk/solutions/rapidbrowser"
dorks [
'intitle:"Welcome to Rapid Browser"'
]
matches [
{:text=>'Welcome to Rapid Browser'},
]
end