package titanium.mobile;

/**
App.Properties class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.App.Properties-module.html

- namespace

Titanium.App.Properties

- type

module

- returns

object

- description

The App Properties module is used for storing application related property/value pairs which persist beyond application sessions.

- since

0.5

- platforms

iphone, android, ipad

- methods

getBool: return a boolean value
getDouble: return a double value
getInt: return an integer value
getString: return a string value
getList: return a value as an array
setBool: set a property as a boolean value
setDouble: set a property as a double value
setInt: set a property as an integer value
setString: set a property as a string value
setList: set a property as an array value
removeProperty: remove an existing property
hasProperty: returns true if the property exists
listProperties: return an array of property propertys


- method : setBool

property[string]: property name
value[boolean]: value

- method : setInt

property[string]: property name
value[int]: value

- method : setDouble

property[string]: property name
value[double]: value

- method : setInt

property[string]: property name
value[int]: value

- method : setString

property[string]: property name
value[string]: value

- method : setList

property[string]: property name
value[array]: value

- method : removeProperty

property[string]: property name to remove

- method : hasProperty, boolean

property[string]: property name to check

- method : listProperties,array

- method : getBool, boolean

property[string]: return a boolean value for property
default[boolean]: optional default value if property is not found

- method : getDouble, double

property[string]: return a double value for property
default[double]: optional default value if property is not found

- method : getInt, int

property[string]: return a integer value for property
default[int]: optional default value if property is not found

- method : getString, string

property[string]: return a string value for property
default[string]: optional default value if property is not found

- method : getList, array

property[string]: return an array value for property
default[array]: optional default value if property is not found


- example : store a property

In this example, we store a string property:

~~~
Titanium.App.Properties.setString("my_prop","cool");
~~~

- example : enumerate over saved properties

In this example, we print out all the saved properties to the console:

~~~
var props = Titanium.App.Properties.listProperties();
for (var c=0;c<props.length;c++)
{
	var value = Titanium.App.Properties.getString(props[c]);
	Titanium.API.info(props[c]+" = "+value);
}
~~~

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
	public static function getString(prop:String, def:String):String;
	public static function getList(prop:String, def:Array<Dynamic>):Array<Dynamic>;
	public static function setBool(prop:String, value:Bool):Void;
	public static function setDouble(prop:String, value:Float):Void;
	public static function setInt(prop:String, value:Int):Void;
	public static function setString(prop:String, value:String):Void;
	public static function setList(prop:String, value:Array<Dynamic>):Void;
	public static function removeProperty(prop:String):Void;
	public static function hasProperty(prop:String):Bool;
	public static function listProperties():Array<String>;
}