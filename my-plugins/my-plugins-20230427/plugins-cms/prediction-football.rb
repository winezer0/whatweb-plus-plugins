Plugin.define do
name "Prediction-Football"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Prediction Football is a PHP and MySQL based application that allows you to run a Prediction League on your own website."
website "http://www.predictionfootball.com/"
dorks [
'"Powered by Prediction Football"'
]
matches [
{:regexp=>/<!-- The display of powered by prediction football must not be removed without explicit permission\.[\s]+Unauthorized removal or modification of the powered by prediction football will require that[\s]+the associated payment is made\. -->/},
{:text=>'<!-- Show the different leagues -->'},
{:text=>'<!-- Show the league ID if there is more than one. -->'},
{:version=>/<small>Powered by <a target="_blank" class="VERSION" href="http:\/\/www\.predictionfootball\.com\/">[\s]+Prediction Football <\/a>([^\s^<]+)<\/small>/},
]
end
