package titanium.mobile.facebook;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Facebook.LoginButton class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Facebook.LoginButton-object.html
**/

typedef FacebookCancelEvent = 
{ > Event,
}

@:native("Titanium.Facebook.LoginButton")
extern class FacebookLoginButton extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic, ?addParams:Dynamic):FacebookLoginButton
		return titanium.mobile.Facebook.createLoginButton(params, addParams)
		
	// events
	public static inline var LOGIN_EVENT = "login";
	public static inline var LOGOUT_EVENT = "logout";
	public static inline var CANCEL_EVENT = "cancel";
}