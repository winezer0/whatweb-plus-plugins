##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "AtomFeed"
authors [
  "Caleb Anderson",
]
version "0.1"
description "Atom feed detection"



matches [
{:name=>"atom link type",
:regexp=>/<link .*?type=["']application\/atom\+xml["'].*?>/im
},

]


passive do
	m=[]
	re=/<link .*?type=["']application\/atom\+xml["'].*?>/im #"
	if @body =~ re
		link=@body.scan(re).first		
		url=link.scan(/href=["'](.*?)["']/i).first.first rescue nil
	end

	m<<{:name=>"atom link",:string=>url} unless url.nil?
   	m
end

end


