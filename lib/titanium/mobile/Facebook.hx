package titanium.mobile;

import titanium.mobile.core.Dispatcher;
import titanium.mobile.facebook.FacebookLoginButton;

/**
Facebook class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Facebook-module
**/

typedef FacebookLoginEvent = 
{ > Event,
	cancel:Bool,
	error:String,
	success:Bool
}

typedef FacebookLogoutEvent = 
{ > Event,
	cancel:Bool,
	error:String,
	success:Bool
}

@:native("Titanium.Facebook")
extern class Facebook
{
	// events
	public static inline var LOGIN_EVENT = "login";
	public static inline var LOGOUT_EVENT = "logout";
	
	// static properties
	public static var loggedIn:Bool;
	public static var permissions:Dynamic;
	public static var session:Dynamic;
	public static var userId:Int;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createLoginButton(params:Dynamic, ?addParams:Dynamic):FacebookLoginButton;
	public static function execute(method:String, params:Dynamic, onResponse:Dynamic->Void, data:Dynamic):Void;
	public static function hasPermission(permission:String):Bool;
	public static function isLoggedIn():Bool;
	public static function publishStream(title:String, data:Dynamic, target:String, onResponse:Dynamic->Void):Void;
	public static function query(fql:String, onResponse:Dynamic->Void):Void;
	public static function requestPermission(permission:String, onResponse:Dynamic->Void):Void;
}