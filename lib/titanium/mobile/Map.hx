package titanium.mobile;
import titanium.mobile.map.MapAnnotation;
import titanium.mobile.map.MapView;

/**
Map class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Map-module
**/

@:native("Titanium.Map")
extern class Map
{
	// static constants
	public static var ANNOTATION_GREEN:Int;
	public static var ANNOTATION_PURPLE:Int;
	public static var ANNOTATION_RED:Int;
	public static var HYBRID_TYPE:Int;
	public static var SATELLITE_TYPE:Int;
	public static var STANDARD_TYPE:Int;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createAnnotation(?params:Dynamic):MapAnnotation;
	public static function createMapView(?params:Dynamic):MapView;
}