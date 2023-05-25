Plugin.define do
name "MistCMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MistCMS is a free Content Management System written in PHP that allows you to dynamically edit the content on your website without having to reupload everything every time you want to make a change."
matches [
{:text=>'<!-- Powered by MistCMS @ dvondrake.com -->'},
{:text=>'<div class="page">login</div><form method="post" action="mist.php">'},
]
end
