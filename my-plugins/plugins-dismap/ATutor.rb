Plugin.define do
name "ATutor"
authors [
"winezero",
]
version "0.1"
matches [
{:name=>"Documentation link", :text=>'<span id="howto">For guidance on using ATutor see the official'},
{:name=>"JavaScript", :certainty=>75, :text=>'ATutor.course = ATutor.course || {};'},
{:name=>"Meta Generator", :string=>%r{<meta name="Generator" content="ATutor - Copyright ([0-9]{4}) by http://atutor.ca" />}},
{:url=>"/favicon.ico",:allhash=>"5b816961f19da96ed5a2bf15e79093cb"},
]
end