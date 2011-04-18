package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;

/**
View class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.View-object.html

- namespace

Titanium.UI.View

- type

object

- subtype

view

- description

The View is an empty drawing surface or container. The View is created by the method `Titanium.UI.createView`.

- since

0.9

- platforms

android, iphone, ipad

- properties

- methods

- events

- example : Round View Example

Create a rounded view.

~~~
var view = Titanium.UI.createView({
   borderRadius:10,
   backgroundColor:'red',
   width:50,
   height:50
});
window.add(view);
~~~

**/


@:native("Titanium.UI.View")
extern class View extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):View
		return titanium.mobile.UI.createView(params)
}
