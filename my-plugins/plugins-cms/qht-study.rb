Plugin.define do
name "qht-study"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'qht_study'},
{:url=>'/Js/exam.js', :text=>'AddExam_type(pmid)'},
]
end