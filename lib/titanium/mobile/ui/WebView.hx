package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
WebView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.WebView-object.html
**/


typedef WebViewBeforeLoadEvent = 
{ > Event,
	url:String
}

typedef WebViewLoadEvent = 
{ > Event,
	url:String
}

typedef WebViewErrorEvent = 
{ > Event,
	url:String,
	message:String
}

@:native("Titanium.UI.WebView")
extern class WebView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):WebView
		return titanium.mobile.UI.createWebView(params)
		
	// events
	public inline static var BEFORE_LOAD_EVENT = "beforeload";
	public inline static var ERROR_EVENT = "error";
	public inline static var LOAD_EVENT = "load";
	
	// properties
	public var data:Blob;
	public var html:String;
	public var loading:Bool;
	public var scalesPageToFit:Bool;
	public var url:String;
	
	// methods
	public function canGoBack():Bool;
	public function canGoForward():Bool;
	public function evalJS(content:String):String;
	public function goBack():Void;
	public function goForward():Void;
	public function reload():Void;
	public function repaint():Void;
	public function setBasicAuthentication(username:String, password:String):Void;
	public function stopLoading():Void;
}