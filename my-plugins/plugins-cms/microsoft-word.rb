Plugin.define do
name "microsoft-word"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/Microsoft Word( [\d.]+)?/},
{:regexp=>/(?:<html [^>]*xmlns:w="urn:schemas-microsoft-com:office:word"|<w:WordDocument>|<div [^>]*class="?WordSection1[" >]|<style[^>]*>[^>]*@page WordSection1)/},
{:search=>"all", :text=>'Microsoft Word'},
{:search=>'body', :regexp=>/^Word\./},
]
end