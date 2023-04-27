##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Links"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-20
  # v0.2 # Added form action extraction. 
]
version "0.2"
description "This plugin attempts to extract all the links from the HTML source."



# Extract links
passive do
	m=[]

	# href
	m << { :module=>@body.scan(/<[^>]+href[\s]*=[\s]*['|"]?([^\"^\']+)[^>]*>/i).uniq } if @body =~ /<[^>]+href[\s]*=[\s]*['|"]?([^\"^\']+)[^>]*>/i

	# src
	m << { :module=>@body.scan(/<[^>]+src[\s]*=[\s]*['|"]?([^\"^\']+)[^>]*>/i).uniq } if @body =~ /<[^>]+src[\s]*=[\s]*['|"]?([^\"^\']+)[^>]*>/i

	# form action
	m << { :string=>@body.scan(/<[^>]*form[^>]+action[\s]*=[\s]*['|"]?([^\"^\']+)[^>]*>/i).uniq } if @body =~ /<[^>]*form[^>]+action[\s]*=[\s]*['|"]?([^\"^\']+)[^>]*>/i

	m

end

end

