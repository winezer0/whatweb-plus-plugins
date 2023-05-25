Plugin.define do
name "sqlitemanager"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "SQLiteManager - Web-based SQLite administration"
website "http://www.sqlitemanager.org"
dorks [
'intitle:"SQLite version" "Welcome to SQLiteManager version"'
]
matches [
{:string=>/<h4 class="serverInfo">(SQLite version [\d\.\s-]+)(undefined)? \/ PHP version 5.2.17<\/h4>/},
{:string=>/<h4 class="serverInfo">SQLite version [\d\.\s-]+(undefined)? \/ (PHP version [^\s^<]+)<\/h4>/, :offset=>1},
{:string=>/<title>(SQLite version [\d\.\s-]+)(undefined)?<\/title>/},
{:text=>'<!-- SQLiteFunctionProperties.class.php : propView() -->'},
{:text=>'<!-- common.lib.php : displayMenuTitle() -->'},
{:text=>'<h2 class="sqlmVersion">Database : <a href="main.php?dbsel='},
{:text=>'<td style="white-space: nowrap">	<form name="database" action="main.php" enctype="multipart/form-data" method="POST" onSubmit="checkPath();" target="main">'},
{:version=>/<h2 class="sqlmVersion">Welcome to <a href="http:\/\/www\.sqlitemanager\.org" target="_blank">SQLiteManager<\/a> version ([^\s^>]+)<\/h2>/},
]
end