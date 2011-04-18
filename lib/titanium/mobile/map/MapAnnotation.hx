package titanium.mobile.map;
import titanium.mobile.core.Dispatcher;

/**
MapAnnotation class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Map.Annotation-object.html

- namespace

Titanium.Map.Annotation

- type

object

- subtype

proxy

- description

An Annotation object that is created by the method `Titanium.Map.createAnnotation`. This object gives you low level control over annotations that can be added to a Map View.

- since

0.9

- platforms

android, iphone, ipad

- properties

title[string]: the primary title of the annotation view
subtitle[string]: the secondary title of the annotation view
pincolor[int]: the pin color as one of `Titanium.Map.ANNOTATION_RED`, `Titanium.Map.ANNOTATION_GREEN` or `Titanium.Map.ANNOTATION_PURPLE`.
animate[boolean]: boolean to indicate whether the pin should animate when dropped
leftButton[int,string]: the left button image on the annotation. must either be a button type constant or url
rightButton[int,string]: the right button image on the annotation. must either be a button type constant or url
leftView[object]: a left view that is displayed on the annotation
rightView[object]: a right view that is displayed on the annotation

# 1.4
image[string]: image view for the pin instead of default image.  currently only supported in iphone

# 1.5
titleid[string]: the key in the locale file to use for the title property
subtitleid[string]: the key in the locale file to use for the subtitle property


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