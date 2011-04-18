package titanium.mobile.facebook;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
Facebook.LoginButton class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Facebook.LoginButton-object.html

- namespace

Titanium.Facebook.LoginButton

- type

object

- subtype

view

- description

The Login Button created by `Titanium.Facebook.createLoginButton`.

- since

0.8

- platforms

android, iphone, ipad


- methods

- events

login: fired at session login
logout: fired at session logout
cancel: fired when the login is cancelled

- event : login

success: true if the login was successful
error: error message if success was false
cancel: true if the user cancelled the request by closing the dialog

- event : logout

success: true if the logout was successful
error: error message if success was false
cancel: true if the user cancelled the request by closing the dialog


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