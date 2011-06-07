package titanium.mobile.android;


/**
R class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.R-object

- namespace

Titanium.Android.R

- type

proxy

- description

The Titanium binding of [android.R](http://developer.android.com/reference/android/R.html).  Note that this accesses Android system-wide resources, not your application's resources.  To access your application's resources, you want `Titanium.App.Android.R`.

- since

1.5

- platforms

android

- properties

anim[object] : Animation resources, see [http://developer.android.com/reference/android/R.anim.html](http://developer.android.com/reference/android/R.anim.html)
array[object] : Array resources, see [http://developer.android.com/reference/android/R.array.html](http://developer.android.com/reference/android/R.array.html)
attr[object] : Attribute resources, see [http://developer.android.com/reference/android/R.attr.html](http://developer.android.com/reference/android/R.attr.html)
color[object] : Color resources, see [http://developer.android.com/reference/android/R.color.html](http://developer.android.com/reference/android/R.color.html)
dimen[object] : Dimension resources, see [http://developer.android.com/reference/android/R.dimen.html](http://developer.android.com/reference/android/R.dimen.html)
drawable[object] : Drawable resources, see [http://developer.android.com/reference/android/R.drawable.html](http://developer.android.com/reference/android/R.drawable.html)
id[object] : ID resources, see [http://developer.android.com/reference/android/R.id.html](http://developer.android.com/reference/android/R.id.html)
integer[object] : Integer resources, see [http://developer.android.com/reference/android/R.integer.html](http://developer.android.com/reference/android/R.integer.html)
layout[object] : Layout resources, see [http://developer.android.com/reference/android/R.layout.html](http://developer.android.com/reference/android/R.layout.html)
string[object] : String resources, see [http://developer.android.com/reference/android/R.string.html](http://developer.android.com/reference/android/R.string.html)
style[object] : Style resources, see [http://developer.android.com/reference/android/R.style.html](http://developer.android.com/reference/android/R.style.html)
styleable[object] : Styleable reosurces, see [http://developer.android.com/reference/android/R.styleable.html](http://developer.android.com/reference/android/R.styleable.html)

- notes

These properties and sub-properties are queried directly against the `android.R` class, and should have the same syntax. For example, to retrieve the "OK" string in Android:

`Ti.Android.currentActivity.getString(Ti.Android.R.string.ok);`

**/

#if androidos
@:native("Titanium.Android.R")
extern class R
{		
	// properties
	public var anim:Dynamic;
	public var array:Dynamic;
	public var attr:Dynamic;
	public var color:Dynamic;
	public var dimen:Dynamic;
	public var drawable:Dynamic;
	public var id:Dynamic;
	public var integer:Dynamic;
	public var layout:Dynamic;
	public var string:Dynamic;
	public var style:Dynamic;
	public var styleable:Dynamic;
}
#end