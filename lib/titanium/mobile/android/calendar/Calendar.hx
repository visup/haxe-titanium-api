package titanium.mobile.android.calendar;


/**
Calendar class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.Calendar.Calendar-object

- namespace

Titanium.Android.Calendar.Calendar

- type

object

- description

An object which represents a single calendar in Android.

- since

1.5

- platforms

android

- properties

name[string]: The display name of the calendar.
id[string]: The id of the calendar.
selected[boolean]: Whether the calendar is selected.
hidden[boolean]: Whether the calendar is hidden.

- methods

createEvent: Add an event to the calendar. Returns the created `Titanium.Android.Calendar.Event`.
getEventsBetweenDates: Returns an array of `Titanium.Android.Calendar.Event` objects with all events in the given date range.
getEventById: Returns the `Titanium.Android.Calendar.Event` object for the event with the given integer id.
getEventsInDate: Returns an array of `Titanium.Android.Calendar.Event` objects with all events on the given date.
getEventsInMonth: Returns an array of `Titanium.Android.Calendar.Event` objects with all events in the given month.
getEventsInYear: Returns an array of `Titanium.Android.Calendar.Event` objects with all events in the given year.

- method : createEvent, object

properties[object]: An object defining the properties of the event.  These correspond to properties of `Titanium.Android.Calendar.Event`.

- method : getEventsBetweenDates, array

date1[date]: The start date.
date2[date]: The end date.

- method : getEventById, object

id[int]: The integer id of the event to return.

- method : getEventsInDate, array

year[int]: The year of the desired date.
month[int]: The month of the desired date.  The month is zero-based, therefore January is 0 and December is 11.
day[int]: The day for which events should be returned.

- method : getEventsInMonth, array

year[int]: The year of the desired month.
month[int]: The month for which events should be returned.  The month is zero-based, therefore January is 0 and December is 11.

- method : getEventsInYear, array

year[int]: The year for which all events should be returned.

- example : Events on December 5, 2015

See `Titanium.Android.Calendar` for examples.


**/

#if androidos
@:native("Titanium.Android.Calendar.Calendar")
extern class Calendar
{		
	// properties
	public var name:String;
	public var id:String;
	public var selected:Bool;
	public var hidden:Bool;

	// methods
	public function createEvent(properties:Dynamic):Event;
	public function getEventsBetweenDates(date1:Date, date2:Date):Array<Event>;
	public function getEventById(id:Int):Event;
	public function getEventsInDate(year:Int, month:Int, day:Int):Array<Event>;
	public function getEventsInMonth(year:Int, month:Int):Array<Event>;
	public function getEventsInYear(year:Int):Array<Event>;
}
#end