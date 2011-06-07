package titanium.mobile;
import titanium.mobile.map.MapAnnotation;
import titanium.mobile.map.MapView;

/**
Map class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Map-module

- namespace

Titanium.Map

- type

module

- returns

object

- description

The top level Map module.  The Map module is used for creating in-application native maps.

- since

0.8

- platforms

android, iphone, ipad

- properties

STANDARD_TYPE[int]: Displays a street map that shows the position of all roads and some road names.
SATELLITE_TYPE[int]: Displays satellite imagery of the area.
HYBRID_TYPE[int]: Displays a satellite image of the area with road and road name information layered on top.

ANNOTATION_RED[int]:The head of the pin is red. Red pins indicate destination points on the map.
ANNOTATION_GREEN[int]:The head of the pin is green. Green pins indicate starting points on the map.
ANNOTATION_PURPLE[int]:The head of the pin is purple. Purple pins indicate user-specified points on the map.


- example : Map Example

This is a basic map example that uses a custom annotation on the map.

~~~
var mountainView = Titanium.Map.createAnnotation({
	latitude:37.390749,
	longitude:-122.081651,
	title:"Appcelerator Headquarters",
	subtitle:'Mountain View, CA',
	pincolor:Titanium.Map.ANNOTATION_RED,
	animate:true,
	leftButton: '../images/appcelerator_small.png',
	myid:1 // CUSTOM ATTRIBUTE THAT IS PASSED INTO EVENT OBJECTS
});

var mapview = Titanium.Map.createView({
	mapType: Titanium.Map.STANDARD_TYPE,
	region: {latitude:33.74511, longitude:-84.38993, 
			latitudeDelta:0.01, longitudeDelta:0.01},
	animate:true,
	regionFit:true,
	userLocation:true,
	annotations:[mountainView]
});

win.add(mapview);
~~~

**/

@:native("Titanium.Map")
extern class Map
{
	// static constants
	public static var ANNOTATION_RED:Int;
	public static var ANNOTATION_GREEN:Int;
	public static var ANNOTATION_PURPLE:Int;
	public static var STANDARD_TYPE:Int;
	public static var SATELLITE_TYPE:Int;
	public static var HYBRID_TYPE:Int;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createAnnotation(?params:Dynamic):MapAnnotation;
	public static function createMapView(?params:Dynamic):MapView;
}