package titanium.mobile.android.calendar;


/**
Alert class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.Calendar.Alert-object

- namespace

Titanium.Android.Calendar.Alert

- type

object

- description

An object which represents a single alert for an event in an Android calendar.

- since

1.5

- platforms

android

- properties

id[string]: The id of the alert.
eventId[int]: The integer id of the event for which the alert is set.
begin[date]: The date/time at which the corresponding event begins.
end[date]: The date/time at which the corresponding event ends.
alarmTime[date]: The date/time at which the alert's alarm is triggered.
state[int]: The current state of the alert.  Possible values are the STATE_ constants in `Titanium.Android.Calendar`.
minutes[int]: The minutes before the event when the alert should trigger.

**/

#if androidos
@:native("Titanium.Android.Calendar.Alert")
extern class Alert
{		
	// properties
	public var id:String;
	public var eventId:Int;
	public var begin:Date;
	public var end:Date;
	public var alarmTime:Date;
	public var state:Int;
	public var minutes:Int;
}
#end