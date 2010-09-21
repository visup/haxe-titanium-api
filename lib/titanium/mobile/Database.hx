package titanium.mobile;

import titanium.mobile.database.DatabaseDB;

/**
Database class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Database-module
**/


@:native("Titanium.Database")
extern class Database
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function install(path:String, name:String):DatabaseDB;
	public static function open(name:String):DatabaseDB;
}