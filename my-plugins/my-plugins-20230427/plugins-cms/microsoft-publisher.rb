Plugin.define do
name "microsoft-publisher"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/Microsoft Publisher( [\d.]+)?/, :search=>'body'},
{:regexp=>/(?:<html [^>]*xmlns:w="urn:schemas-microsoft-com:office:publisher"|<!--[if pub]><xml>)/},
{:regexp=>/^Publisher\./, :search=>'body'},
{:search=>"all", :text=>'Microsoft Publisher'},
]
end