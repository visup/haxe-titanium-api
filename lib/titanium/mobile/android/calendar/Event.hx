package titanium.mobile.android.calendar;


/**
Event class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.Calendar.Event-object

- namespace

Titanium.Android.Calendar.Event

- type

object

- description

An object which represents a single event in an Android calendar.

- since

1.5

- platforms

android

- properties

id[string]: The id of the event.
begin[date]: The date/time at which the event begins.
end[date]: The date/time at which the event ends.
title[string]: The title string for the event.
description[string]: The event description.
location[string]: The event location.
allDay[boolean]: Whether the event is all day.
hasAlarm[boolean]: Whether an alarm is scheduled for the event.
hasExtendedProperties[boolean]: 
status[int]: The status of the event.  Possible values are the STATUS constants in `Titanium.Android.Calendar`.
visibility[int]: The event's visibility.  Possible values are the VISIBILITY constants in `Titanium.Android.Calendar`.
extendedProperties[object]: An object containing extended properties of the event.
reminders[array]: An array of `Titanium.Android.Calendar.Reminder` objects which are the reminders - if any - for this event.
alerts[array]: An array of `Titanium.Android.Calendar.Alert` objects which are the alerts - if any - for this event.

- methods

createAlert: create an alert for this event.  Pass a dictionary object containing attributes corresponding to properties of `Titanium.Android.Calendar.Alert`.  Returns the created alert.

createReminder: create a reminder for this event.  Pass a dictionary object containing attributes corresponding to properties of `Titanium.Android.Calendar.Reminder`.  Returns the created Reminder.

getExtendedProperty: Returns the value of the given extended property key string.

setExtendedProperty: Set the value of the named extended property.

- method : createAlert, object

data[object]: Properties for the new alert, corresponding to properties of `Titanium.Android.Calendar.Alert`.

- method : createReminder, object

data[object]: Properties for the new reminder, corresponding to properties of `Titanium.Android.Calendar.Reminder`.

- method : getExtendedProperty, string

name[string]: The name of the extended property whose value should be returned.

- method : setExtendedProperty

name[string]: The name of the extended property whose value should be set.
value[string]: The value to which to set the named extended property.

- notes

The API supports retrieving information about existing events and creating new events.  However, modifying or deleting existing events is not yet supported.  Additionally, recurring events are not yet supported.

- example : Event API

See `Titanium.Android.Calendar` for examples of retrieving event information and creating events.


**/

#if androidos
@:native("Titanium.Android.Calendar.Event")
extern class Event
{		
	// properties
	public var id:String;
	public var begin:Date;
	public var end:Date;
	public var title:String;
	public var description:String;
	public var location:String;
	public var allDay:Bool;
	public var hasAlarm:Bool;
	public var hasExtendedProperties:Bool;
	public var status:Int;
	public var visibility:Int;
	public var extendedProperties:Dynamic;
	public var reminders:Array<Reminder>;
	public var alerts:Array<Alert>;

	// methods
	public function createAlert(data:Dynamic):Alert;
	public function createReminder(data:Dynamic):Reminder;
	public function getExtendedProperty(name:String):String;
	public function setExtendedProperty(name:String, value:String):Void;

}
#end