package titanium.mobile.android;


/**
NotificationManager class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.NotificationManager-module

- namespace

Titanium.Android.NotificationManager

- type

module

- description

Module to notify users of events that happen. It is a thin wrapper on [NotificationManager](http://developer.android.com/reference/android/app/NotificationManager.html).

- since

1.5

- platforms

android

- methods
cancel: Cancel a previously shown notification.
cancelAll: Cancel all previously shown notifications.
notify: Add a persistent notification to the status bar.

- method : cancel
id[int]: The id you assigned to a notification.

- method : cancelAll

- method : notify
id[int] : An id that may be used to cancel a shown notification.
notification[`Titanium.Android.Notification`] : An instance of `Titanium.Android.Notification` created with `Titanium.Android.createNotification`.

- properties

DEFAULT_ALL[int] : Use all default values (where applicable).
DEFAULT_LIGHTS[int] : Use the default notification lights.
DEFAULT_SOUND[int] : Use the default notification sound.
DEFAULT_VIBRATE[int] : Use the default notification vibrate.
FLAG_AUTO_CANCEL[int] : Bit to be bitwise-ored into the flags field that should be set if the notification should be canceled when it is clicked by the user.
FLAG_INSISTENT[int] : Bit to be bitwise-ored into the flags field that if set, the audio will be repeated until the notification is cancelled or the notification window is opened.
FLAG_NO_CLEAR[int] : Bit to be bitwise-ored into the flags field that should be set if the notification should not be canceled when the user clicks the Clear all button.
FLAG_ONGOING_EVENT[int] : Bit to be bitwise-ored into the flags field that should be set if this notification is in reference to something that is ongoing, like a phone call.
FLAG_ONLY_ALERT_ONCE[int] : Bit to be bitwise-ored into the flags field that should be set if you want the sound and/or vibration play each time the notification is sent, even if it has not been canceled before that.
FLAG_SHOW_LIGHTS[int] : Bit to be bitwise-ored into the flags field that should be set if you want the LED on for this notification.
STREAM_DEFAULT[int] : Use this constant as the value for audioStreamType to request that the default stream type for notifications be used.

- notes

The constants above are taken from [Notification](http://developer.android.com/reference/android/app/Notification.html).

**/

#if androidos
@:native("Titanium.Android.NotificationManager")
extern class NotificationManager
{		
	// constants
	public static var DEFAULT_ALL:Int;
	public static var DEFAULT_LIGHTS:Int;
	public static var DEFAULT_SOUND:Int;
	public static var DEFAULT_VIBRATE:Int;
	public static var FLAG_AUTO_CANCEL:Int;
	public static var FLAG_INSISTENT:Int;
	public static var FLAG_NO_CLEAR:Int;
	public static var FLAG_ONGOING_EVENT:Int;
	public static var FLAG_ONLY_ALERT_ONCE:Int;
	public static var FLAG_SHOW_LIGHTS:Int;
	public static var STREAM_DEFAULT:Int;

	// static methods
	public static function cancel(id:Int):Void;
	public static function cancelAll():Void;
	public static function notify(id:Int, notification:Notification):Void;

}
#end