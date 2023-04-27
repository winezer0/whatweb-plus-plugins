##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Meta-City"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-20
  # v0.2 # 2011-03-31 # Updated regex. 
]
version "0.2"
description "This plugin retrieves the city from the meta city tag. This tag is used by the Gigablast search engine."



# Matches #
matches [

# Extract city
{ :string=>/<meta[^>]+name[\s]*=[\s]*['"]city['"][^>]+content[\s]*=[\s]*['"]([^'^"^>]+)/i },
{ :string=>/<meta[^>]+content[\s]*=[\s]*['"]([^"^'^>]+)['"][^>]+name[\s]*=[\s]*['"]city/i },

]

end

