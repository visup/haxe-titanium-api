package titanium.mobile.database;

/**
Database.DB class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Database.DB-object

- namespace

Titanium.Database.DB

- type

proxy

- description

The Database instance returned by `Titanium.Database.open` or `Titanium.Database.install`. 

- since

0.1

- platforms

android, iphone, ipad


- methods

execute: execute a SQL statement against the database and returns a ResultSet
close: close the database and release resources from memory. once closed, this instance is no longer valid and must no longer be used.
remove: remove the database files for this instance from disk. WARNING: this is a destructive operation and cannot be reversed. All data in the database will be lost upon calling this function. Use with caution.

- method : execute, object

sql[string]: the SQL to execute
vararg[array,...]: one or more optional variable arguments passed to this function or an array of objects to be replaced in the query using `?` substitution.

- properties

lastInsertRowId[int]: the last row identifier by the last INSERT query
rowsAffected[int]: the number of rows affected by the last query
name[string]: the name of the database


**/

@:native("Titanium.Database.DB")
extern class DatabaseDB
{
	// properties
	public var lastInsertRowId:Int;
	public var name:String;
	public var rowsAffected:Int;
	
	// methods
	public function execute(sql:String, ?args:Array<Dynamic>):DatabaseResultSet;
	public function close():Void;
	public function remove():Void;
}