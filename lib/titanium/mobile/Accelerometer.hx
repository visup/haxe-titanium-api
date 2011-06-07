package titanium.mobile;

import titanium.mobile.core.Dispatcher;

/**
Accelerometer class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Accelerometer-module

- namespace

Titanium.Accelerometer

- type

module

- returns

object

- description

The top level Accelerometer module.  The Accelerometer modules contains methods and properties for using the device accelerometer.

- since

0.1

- platforms

android, iphone, ipad

- properties


- methods


- events

update: fired when the accelerometer changes

- event : update

x: the x axis of the device
y: the y axis of the device
z: the z axis of the device
timestamp: reference timestamp since the previous change. this is not a valid timestamp and should simply be used to determine the time between events and not an exact timestamp.

- example : Basic Accelerometer Event

Adds an accelerometer update event listener which prints out the x, y and z axis as the \
device is moved.  You should generally remove the event when not used to conserve device \
resources.  If you do not have an active event listener, the accelerometer is turned off to \
conserve device resources.

~~~
Titanium.Accelerometer.addEventListener('update',function(e)
{
	Ti.API.debug("accelerometer - x:"+e.x+",y:"+e.y+",z:"+e.z);
});
~~~

- notes

You'll want to be selective about turning on and off the device accelerometer.  It's recommended you \
turn off the accelerometer when you're not using it.

You can turn off the accelerometer by simply removing your event listener function.  You can turn it \
back on by re-adding the same function with `addEventListener`.

~~~
Titanium.Accelerometer.removeEventListener('update',myFunction);
~~~

**/


typedef AccelerometerUpdateEvent = 
{ > Event,
	x:Float,
	y:Float,
	z:Float,
	timestamp:String
}

@:native("Titanium.Accelerometer")
extern class Accelerometer
{
	// events
	public static inline var UPDATE_EVENT:String = "update";
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;

}