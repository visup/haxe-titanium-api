package titanium.mobile.database;

/**
Database.ResultSet class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Database.ResultSet-object.html

- namespace

Titanium.Database.ResultSet

- type

proxy

- description

The ResultSet instance returned by invoking a database SQL `execute`.

- since

0.1

- platforms

android, iphone, ipad


- methods

close: close the result set and release resources. once closed, this result set must no longer be used
next:iterate to the next row in the result set. returns false if no more results are available
field: retrieve a row value by field index
fieldByName: retrieve a row value by field name
fieldCount: return the number of columns in the result set
isValidRow: return true if the row is a valid row
fieldName: return the field name for field index

- method : fieldName, string

index[int]: field name column index (which is zero based)

- method : next, boolean

- method : field, object

index[int] : column index (which is zero based)

- method : fieldByName, object

name[string] : column name from SQL query

- method : fieldCount, int

- method : isValidRow, boolean

- properties

rowCount[int] : the number of rows in the result set
validRow[boolean] : returns true if the current row is still valid


**/

@:native("Titanium.Database.ResultSet")
extern class DatabaseResultSet
{
	// properties
	public var rowCount:Int;
	public var validRow:Bool;
	
	// methods
	public function field(index:Int):Dynamic;
	public function fieldByName(name:String):Dynamic;
	public function fieldCount():Int;
	public function fieldName(index:Int):String;
	public function isValidRow():Bool;
	public function next():Bool;
}