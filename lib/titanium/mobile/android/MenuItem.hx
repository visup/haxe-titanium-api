package titanium.mobile.android;

import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.BaseView;

/**
MenuItem class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.MenuItem-object

- namespace

Titanium.Android.MenuItem

- type

proxy

- description

The Titanium binding of an [Android Intent](http://developer.android.com/reference/android/content/Intent.html)

- since

1.5

- platforms

android

- methods
putExtra: Put an extra property on this Intent
putExtraUri: Put a URI property on this Intent (useful for `Titanium.Android.EXTRA_STREAM`)
hasExtra: Returns whether or not this Intent has a property
addCategory: Add a category to this Intent. See the category constants in `Titanium.Android`.
getStringExtra: Get a string property from this Intent
getBooleanExtra: Get a boolean property from this Intent
getIntExtra: Get a int property from this Intent
getLongExtra: Get a long property from this Intent
getDoubleExtra: Get a double property from this Intent
getData: Get the Data URI from this Intent
addFlags: augment the existing flags on the Intent.

- method : putExtra
name[string]: The property name
value[object]: The property value

- method : putExtraUri
name[string]: The property name
value[string]: The URI string

- method : hasExtra, boolean
name[string]: The property name to check for

- method : addCategory
name[string]: The category name. See the category constants in `Titanium.Android`

- method : getStringExtra, string
name[string]: The string property to get

- method : getBooleanExtra, boolean
name[string]: The boolean property to get

- method : getIntExtra, int
name[string]: The int property to get

- method : getLongExtra, int
name[string]: The long property to get

- method : getDoubleExtra, double
name[string]: The double property to get

- method : addFlags
flags[int]: the flags to add to the existing set.

- properties
action[string]: An action constant from [[Titanium.Android]]
url[string]: The URL to a Titanium Javascript Activity
data[string]: The Intent's Data URI. See also Android's [Intent.setData](http://developer.android.com/reference/android/content/Intent.html#setData(android.net.Uri))
className[string]: The Java class name of the activity (packageName must also be set)
packageName[string]: The fully-qualified Java package name of the activity
type[string]: The mime type for this Intent. See also Android's [Intent.setType](http://developer.android.com/reference/android/content/Intent.html#setType(java.lang.String))
flags[int]: Intent flags. See the flags constants in `Titanium.Android`.

- example : Create an Intent for Launching an Activity
~~~
var intent = Ti.Android.createIntent({
	action: Ti.Android.ACTION_MAIN,
	url: 'activity1.js'
});
intent.addCategory(Ti.Android.CATEGORY_LAUNCHER);
Ti.Android.currentActivity.startActivity(intent);
~~~

- example : Create an Intent to get a Contact URI from the user's contacts
~~~
var intent = Ti.Android.createIntent({
	action: Ti.Android.ACTION_GET_CONTENT,
	type: "vnd.android.cursor.item/phone"
});
~~~

- example : Pick a Photo from the Photo Gallery
~~~
var intent = Ti.Android.createIntent({
	action: Ti.Android.ACTION_PICK,
	type: "image/*"
});
intent.addCategory(Ti.Android.CATEGORY_DEFAULT);
~~~


**/

#if androidos

typedef MenuItemClickEvent = 
{ > TouchEvent,
}

@:native("Titanium.Android.MenuItem")
extern class MenuItem
{		
	// properties
	public var enabled:Bool;
	public var groupId:Int;
	public var itemId:Int;
	public var order:Int;
	public var title:String;
	public var titleCondensed:String;
	public var visible:Bool;

	// methods
	public function getGroupId():Int;
	public function getItemId():Int;
	public function getOrder():Int;
	public function getTitle():String;
	public function getCondensedTitle():String;
	public function isEnabled():Bool;
	public function isVisible():Bool;
	public function setEnabled(enabled:Bool):Void;
	public function setIcon(icon:Dynamic):Void;
	public function setTitle(title:String):Void;
	public function setCondensedTitle(condensedTitle:String):Void;
	public function setVisible(visible:Bool):Void;
}
#end