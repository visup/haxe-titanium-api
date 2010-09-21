package titanium.mobile.map;

import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
MapView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Map.MapView-object.html
**/

typedef MapViewClickEvent = 
{ > TouchEvent,
	annotation:MapAnnotation,
	clicksource:String,
	index:Int,
	map:MapView,
	title:String
}

typedef MapViewErrorEvent = 
{ > Event,
	message:String
}

@:native("Titanium.Map.MapView")
extern class MapView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):MapView
		return titanium.mobile.Map.createMapView(params)
		
	// events
	public static inline var MAP_CLICK_EVENT:String = "click";
	public static inline var ERROR_EVENT:String = "error";
	public static inline var COMPLETE_EVENT:String = "loading";
	public static inline var LOADING_EVENT:String = "loading";
	public static inline var REGION_CHANGED_EVENT:String = "regionChanged";
	
	// properties
	public var annotations:Array<MapAnnotation>;
	public var location:Dynamic;
	public var mapType:Int;
	public var region:Dynamic;
	public var regionFit:Bool;
	public var userLocation:Bool;
	
	// methods
	public function addAnnotation(annotation:Dynamic):Void;
	public function addAnnotations(annotations:Dynamic):Void;
	public function addRoute(route:Dynamic):Void;
	public function deselectAnnotation(annotation:Dynamic):Void;
	public function removeAnnotation(annotation:Dynamic):Void;
	public function removeAnnotations(annotations:Dynamic):Void;
	public function removeAllAnnotations():Void;
	#if iphoneos
	public function removeRoute(route:Dynamic):Void;
	#end
	public function selectAnnotation(annotation:Dynamic):Void;
	public function zoom(level:Float):Void;
}