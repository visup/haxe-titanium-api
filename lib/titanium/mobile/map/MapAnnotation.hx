package titanium.mobile.map;
import titanium.mobile.core.Dispatcher;

/**
MapAnnotation class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Map.Annotation-object.html
**/

@:native("Titanium.Map.Annotation")
extern class MapAnnotation extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):MapAnnotation
		return titanium.mobile.Map.createAnnotation(params)
		
	// properties
	public var animate:Bool;
	#if iphoneos
	public var image:String;
	#end
	public var leftButton:Dynamic;
	public var leftView:Dynamic;
	public var pincolor:Int;
	public var rightButton:Dynamic;
	public var rightView:Dynamic;
	public var title:String;
	public var subtitle:String;
}