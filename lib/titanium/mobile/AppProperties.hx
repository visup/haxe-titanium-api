package titanium.mobile;

/**
App.Properties class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.App.Properties-module.html
**/

@:native("Titanium.App.Properties")
extern class AppProperties
{
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function getBool(prop:String, def:Bool):Bool;
	public static function getDouble(prop:String, def:Float):Float;
	public static function getInt(prop:String, def:Int):Int;
	public static function getList(prop:String, def:Array<Dynamic>):Array<Dynamic>;
	public static function getString(prop:String, def:String):String;
	public static function hasProperty(prop:String):Bool;
	public static function listProperties():Array<String>;
	public static function removeProperty(prop:String):Void;
	public static function setBool(prop:String, value:Bool):Void;
	public static function setDouble(prop:String, value:Float):Void;
	public static function setInt(prop:String, value:Int):Void;
	public static function setList(prop:String, value:Array<Dynamic>):Void;
	public static function setString(prop:String, value:String):Void;
}