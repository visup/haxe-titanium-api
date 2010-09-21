package titanium.mobile.database;

/**
Database.DB class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Database.DB-object
**/

@:native("Titanium.Database.DB")
extern class DatabaseDB
{
	// properties
	public var lastInsertRowId:Int;
	public var name:String;
	public var rowsAffected:Int;
	
	// methods
	public function close():Void;
	public function execute(sql:String, ?args:Array<Dynamic>):DatabaseResultSet;
	public function remove():Void;
}