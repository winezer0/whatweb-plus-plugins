##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Allhash"
authors [
  "Andrew Horton",
  # v0.2 # remove :certainty. 
]
version "0.2"
description "MD5 and MMH3 sum of html body. Useful to find matching pages"

# Passive #
passive do
	m=[]

	# MD5 hash of HTML source # :string=>Digest::MD5.hexdigest(@body)	
	unless @allhashsum.nil?
		m << {:name=>"all hash of html",:string=>@allhashsum}
	end

	# Return passive matches
 	m
end

end

