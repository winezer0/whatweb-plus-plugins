Plugin.define do
name "cdr-stats" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/CDR-Stats|Customer Interface/},
{:text=>'/static/cdr-stats/js/jquery'},
{:text=>'CDR-Stats | Customer Interface'},
]
end