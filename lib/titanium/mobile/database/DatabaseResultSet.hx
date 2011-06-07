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
next: iterate to the next row in the result set. returns false if no more results are available
field: retrieve a row value by field index
fieldByName: retrieve a row value by field name
fieldCount: return the number of columns in the result set
isValidRow: return true if the row is a valid row
fieldName: return the field name for field index


- method : next, boolean

- method : field, object

index[int] : column index (which is zero based)
type[int] : [optional] one of (`Titanium.Database.FIELD_TYPE_STRING` | `Titanium.Database.FIELD_TYPE_INT` | `Titanium.Database.FIELD_TYPE_FLOAT` | `Titanium.Database.FIELD_TYPE_DOUBLE`)

- method : fieldByName, object

name[string] : column name from SQL query
type[int] : [optional] one of (`Titanium.Database.FIELD_TYPE_STRING` | `Titanium.Database.FIELD_TYPE_INT` | `Titanium.Database.FIELD_TYPE_FLOAT` | `Titanium.Database.FIELD_TYPE_DOUBLE`)

- method : fieldCount, int

- method : isValidRow, boolean

- method : fieldName, string

index[int]: field name column index (which is zero based)

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
	public function close():Void;
	public function next():Bool;
	public function field(index:Int, ?type:Int):Dynamic;
	public function fieldByName(name:String, ?type:Int):Dynamic;
	public function fieldCount():Int;
	public function isValidRow():Bool;
	public function fieldName(index:Int):String;

}