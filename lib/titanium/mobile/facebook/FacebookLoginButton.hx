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

The Login Button created by `Titanium.Facebook.createLoginButton`.  This is a Facebook-themed button that does not require a click event handler or any listeners.  It "just works" and changes its label to reflect the current state of the Facebook session.  For example, if the user is already logged in, this button will show "Logout".

- since

0.8

- platforms

android, iphone, ipad

- properties
style[string]: set to "wide" to show a wider version of the button that displays "Connect with Facebook" instead of just "Connect".

- notes

See the examples in the `Titanium.Facebook` documentation.


**/


@:native("Titanium.Facebook.LoginButton")
extern class FacebookLoginButton extends BaseView
{
	// static constructor
	public inline static function create(?parameters:Dynamic):FacebookLoginButton
		return titanium.mobile.Facebook.createLoginButton(parameters)
		
	// static properties
	public static var Style:String;
}