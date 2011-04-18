package titanium.mobile;

/**
XML class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.XML-module

- namespace

Titanium.XML

- type

module

- description

The top level XML module.  The XML module is used parsing and processing XML-based content.

- since

0.9

- platforms

android, iphone, ipad

- methods

parseString: parse an XML string into a DOMDocument
serializeToString: serialize a DOMDocument or DOMNode and its descendants into an XML string

- method : parseString, object

xml[string]: the XML content as a string

- method : serializeToString, string

node[DOMNode]: the XML DOMNode or DOMDocument to serialize


**/

@:native("Titanium.XML")
extern class XML
{	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function parseString(str:String):Dynamic;
	public static function serializeToString(xml:Dynamic):String;
}