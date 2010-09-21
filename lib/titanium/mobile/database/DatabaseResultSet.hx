package titanium.mobile.database;

/**
Database.ResultSet class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Database.ResultSet-object.html
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