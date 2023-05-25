Plugin.define do
name "MySQL-dump"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Extracts MySQL host, database and server version from MySQL-dump .sql files."
dorks [
'"MySQL dump" ext:sql "Host" "Table structure for table"'
]
matches [
{:string=>/^# phpMyAdmin MySQL-Dump[\s]+# version [^\s]+[\s]+# http:\/\/www.phpmyadmin.net\/ \(download page\)[\s#]+# Host: ([^\s]+)[\s]+# Generation Time: [^\#]+# Server version:[^\#]+# PHP Version:[^\#]+# Database : `([^\`]+)`/, :offset=>1},
{:string=>/^-- MySQL dump [\d\.]+[\r]?\n--[\r]?\n-- Host: ([^\s]+)[\s]+Database:[\s]+([^\r^\n]+)/, :offset=>1},
{:version=>/------------------------------------------------------[\r]?\n-- Server version[\s]+([^\r^\n]+)/},
{:version=>/^# phpMyAdmin MySQL-Dump[\s]+# version [^\s]+[\s]+# http:\/\/www.phpmyadmin.net\/ \(download page\)[\s#]+# Host: [^\s]+[\s]+# Generation Time: [^\n]+[\s]+# Server version: ([\d\.]+)/},
]
end
