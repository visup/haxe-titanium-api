package titanium.mobile;

import titanium.mobile.core.Dispatcher;
import titanium.mobile.android.Intent;
import titanium.mobile.android.Notification;
import titanium.mobile.android.Service;
import titanium.mobile.android.PendingIntent;
import titanium.mobile.android.RemoteViews;

/**
Android class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android-module

- namespace

Titanium.Android

- type

module

- description

The top level Android module. `Ti.Android.currentActivity` provides each context an Activity. This object cannot be created directly.

- since

1.5

- platforms

android

- methods

createIntent : Create a `Titanium.Android.Intent`. Used to start other Activities and for marshaling data.
createIntentChooser : Display chooser interface to allow selection of desired target.
createNotification : Crate a `Titanium.Android.Notification`. Used to notify the user of an event.
createService : Create a `Titanium.Android.Service` so you can start/stop it and listen for events from it.
createServiceIntent : Create an `Titanium.Android.Intent` to be used to start a Service.
isServiceRunning : Check on state of Service.
startService : Start a simple service
stopService : Stop a simple service that was started with `startService`.
createBroadcastIntent : Create a `Titanium.Android.Intent` to be used to start a Broadcast.
createPendingIntent : Create a `Titanium.Android.PendingIntent` to be used inside a `Titanium.Android.Notification`

- method : createIntent, `Titanium.Android.Intent`

- method : createIntentChooser, `Titanium.Android.Intent`

- method : createNotification, `Titanium.Android.Notification`
options[object]: Options dictionary

- method : createService, `Titanium.Android.Service`
intent[`Titanium.Android.Intent`]: An Intent created with `Titanium.Android.createServiceIntent` which specifies the service to be instantiated.

- method : createServiceIntent, `Titanium.Android.Intent`
options[object]: Options dictionary -- pass in a `url` option to specify the path to a javascript-based service you create.

- method : isServiceRunning, boolean
intent[`Titanium.Android.Intent`]: An Intent created with `Titanium.Android.createServiceIntent` which specifies the service to check.

- method : startService
intent[`Titanium.Android.Intent`]: An Intent created with `Titanium.Android.createServiceIntent` which specifies the service to start.

- method : stopService
intent[`Titanium.Android.Intent`]: An Intent created with `Titanium.Android.createServiceIntent` which specifies the service to stop.

- method : createBroadcastIntent, `Titanium.Android.Intent`

- method : createPendingIntent, `Titanium.Android.PendingIntent`
intent[`Titanium.Android.Intent`]: The Intent that will be executed
flags[int]: (optional, default: 0) Can be any of `Titanium.Android.FLAG_CANCEL_CURRENT`, `Titanium.Android.FLAG_NO_CREATE`, `Titanium.Android.FLAG_ONE_SHOT`, `Titanium.Android.FLAG_UPDATE_CURRENT` 

- properties

R[object] : Accessor for android resources
ACTION_AIRPLANE_MODE_CHANGED[string] : 
ACTION_ALL_APPS[string] : 
ACTION_ANSWER[string] : 
ACTION_ATTACH_DATA[string] : 
ACTION_BATTERY_CHANGED[string] : 
ACTION_BATTERY_LOW[string] : 
ACTION_BATTERY_OKAY[string] : 
ACTION_BOOT_COMPLETED[string] : 
ACTION_BUG_REPORT[string] : 
ACTION_CALL[string] : 
ACTION_CALL_BUTTON[string] : 
ACTION_CAMERA_BUTTON[string] : 
ACTION_CHOOSER[string] : 
ACTION_CLOSE_SYSTEM_DIALOGS[string] : 
ACTION_CONFIGURATION_CHANGED[string] : 
ACTION_CREATE_SHORTCUT[string] : 
ACTION_DATE_CHANGED[string] : 
ACTION_DEFAULT[string] : 
ACTION_DELETE[string] : 
ACTION_DEVICE_STORAGE_LOW[string] : 
ACTION_DIAL[string] : 
ACTION_EDIT[string] : 
ACTION_GET_CONTENT[string] : 
ACTION_GTALK_SERVICE_CONNECTED[string] : 
ACTION_GTALK_SERVICE_DISCONNECTED[string] : 
ACTION_HEADSET_PLUG[string] : 
ACTION_INPUT_METHOD_CHANGED[string] : 
ACTION_INSERT[string] : 
ACTION_INSERT_OR_EDIT[string] : 
ACTION_MAIN[string] : 
ACTION_MANAGE_PACKAGE_STORAGE[string] : 
ACTION_MEDIA_BAD_REMOVAL[string] : 
ACTION_MEDIA_BUTTON[string] : 
ACTION_MEDIA_CHECKING[string] : 
ACTION_MEDIA_EJECT[string] : 
ACTION_MEDIA_MOUNTED[string] : 
ACTION_MEDIA_NOFS[string] : 
ACTION_MEDIA_REMOVED[string] : 
ACTION_MEDIA_SCANNER_FINISHED[string] : 
ACTION_MEDIA_SCANNER_SCAN_FILE[string] : 
ACTION_MEDIA_SCANNER_STARTED[string] : 
ACTION_MEDIA_SHARED[string] : 
ACTION_MEDIA_UNMOUNTABLE[string] : 
ACTION_MEDIA_UNMOUNTED[string] : 
ACTION_NEW_OUTGOING_CALL[string] : 
ACTION_PACKAGE_ADDED[string] : 
ACTION_PACKAGE_CHANGED[string] : 
ACTION_PACKAGE_DATA_CLEARED[string] : 
ACTION_PACKAGE_INSTALL[string] : 
ACTION_PACKAGE_REMOVED[string] : 
ACTION_PACKAGE_REPLACED[string] : 
ACTION_PACKAGE_RESTARTED[string] : 
ACTION_PICK[string] : 
ACTION_PICK_ACTIVITY[string] : 
ACTION_POWER_CONNECTED[string] : 
ACTION_POWER_DISCONNECTED[string] : 
ACTION_POWER_USAGE_SUMMARY[string] : 
ACTION_PROVIDER_CHANGED[string] : 
ACTION_REBOOT[string] : 
ACTION_RUN[string] : 
ACTION_SCREEN_OFF[string] : 
ACTION_SCREEN_ON[string] : 
ACTION_SEARCH[string] : 
ACTION_SEARCH_LONG_PRESS[string] : 
ACTION_SEND[string] : 
ACTION_SENDTO[string] : 
ACTION_SEND_MULTIPLE[string] : 
ACTION_SET_WALLPAPER[string] : 
ACTION_SHUTDOWN[string] : 
ACTION_SYNC[string] : 
ACTION_SYSTEM_TUTORIAL[string] : 
ACTION_TIME_CHANGED[string] : 
ACTION_TIME_TICK[string] : 
ACTION_UID_REMOVED[string] : 
ACTION_UMS_CONNECTED[string] : 
ACTION_UMS_DISCONNECTED[string] : 
ACTION_USER_PRESENT[string] : 
ACTION_VIEW[string] : 
ACTION_VOICE_COMMAND[string] : 
ACTION_WALLPAPER_CHANGED[string] : 
ACTION_WEB_SEARCH[string] : 

CATEGORY_ALTERNATIVE[string] : 
CATEGORY_BROWSABLE[string] : 
CATEGORY_DEFAULT[string] : 
CATEGORY_DEVELOPMENT_PREFERENCE[string] : 
CATEGORY_EMBED[string] : 
CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST[string] : 
CATEGORY_HOME[string] : 
CATEGORY_INFO[string] : 
CATEGORY_LAUNCHER[string] : 
CATEGORY_MONKEY[string] : 
CATEGORY_OPENABLE[string] : 
CATEGORY_PREFERENCE[string] : 
CATEGORY_SAMPLE_CODE[string] : 
CATEGORY_SELECTED_ALTERNATIVE[string] : 
CATEGORY_TAB[string] : 
CATEGORY_TEST[string] : 
CATEGORY_UNIT_TEST[string] : 

EXTRA_ALARM_COUNT[string] : 
EXTRA_BCC[string] : 
EXTRA_CC[string] : 
EXTRA_DATA_REMOVED[string] : 
EXTRA_DONT_KILL_APP[string] : 
EXTRA_EMAIL[string] : 
EXTRA_INTENT[string] : 
EXTRA_KEY_EVENT[string] : 
EXTRA_PHONE_NUMBER[string] : 
EXTRA_REPLACING[string] : 
EXTRA_SHORTCUT_ICON[string] : 
EXTRA_SHORTCUT_ICON_RESOURCE[string] : 
EXTRA_SHORTCUT_INTENT[string] : 
EXTRA_SHORTCUT_NAME[string] : 
EXTRA_STREAM[string] : 
EXTRA_SUBJECT[string] : 
EXTRA_TEMPLATE[string] : 
EXTRA_TEXT[string] : 
EXTRA_TITLE[string] : 
EXTRA_UID[string] : 

FILL_IN_ACTION[int] : 
FILL_IN_CATEGORIES[int] : 
FILL_IN_COMPONENT[int] : 
FILL_IN_DATA[int] : 
FILL_IN_PACKAGE[int] : 

FLAG_ACTIVITY_BROUGHT_TO_FRONT[int] : 
FLAG_ACTIVITY_CLEAR_TOP[int] : 
FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET[int] : 
FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS[int] : 
FLAG_ACTIVITY_FORWARD_RESULT[int] : 
FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY[int] : 
FLAG_ACTIVITY_MULTIPLE_TASK[int] : 
FLAG_ACTIVITY_NO_ANIMATION[int] : 
FLAG_ACTIVITY_NEW_TASK[int] : 
FLAG_ACTIVITY_NO_HISTORY[int] : 
FLAG_ACTIVITY_NO_USER_ACTION[int] : 
FLAG_ACTIVITY_PREVIOUS_IS_TOP[int] : 
FLAG_ACTIVITY_REORDER_TO_FRONT[int] : 
FLAG_ACTIVITY_RESET_TASK_IF_NEEDED[int] : 
FLAG_ACTIVITY_SINGLE_TOP[int] : 
FLAG_CANCEL_CURRENT[int] : 
FLAG_DEBUG_LOG_RESOLUTION[int] : 
FLAG_FROM_BACKGROUND[int] : 
FLAG_GRANT_READ_URI_PERMISSION[int] : 
FLAG_GRANT_WRITE_URI_PERMISSION[int] : 
FLAG_NO_CREATE[int] : 
FLAG_ONE_SHOT[int] : 
FLAG_RECEIVER_REGISTERED_ONLY[int] : 
FLAG_UPDATE_CURRENT[int] : 

URI_INTENT_SCHEME[int] : 

PENDING_INTENT_FOR_ACTIVITY[int] : 
PENDING_INTENT_FOR_SERVICE[int] : 
PENDING_INTENT_FOR_BROADCAST[int] : 
PENDING_INTENT_MAX_VALUE[int] : 

RESULT_OK[int] : 
RESULT_CANCELED[int] : 
RESULT_FIRST_USER[int] : 

SCREEN_ORIENTATION_BEHIND[int] : 
SCREEN_ORIENTATION_LANDSCAPE[int] : 
SCREEN_ORIENTATION_NOSENSOR[int] : 
SCREEN_ORIENTATION_PORTRAIT[int] : 
SCREEN_ORIENTATION_SENSOR[int] : 
SCREEN_ORIENTATION_UNSPECIFIED[int] : 
SCREEN_ORIENTATION_USER[int] : 

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

Several (almost all) of the constants you see above are directly taken from Android.  So if we've failed to document all of them, have a look online at the [Android SDK reference pages](http://developer.android.com/reference/android/app/Service.html).

The most important page there will be the [Intent reference](http://developer.android.com/reference/android/content/Intent.html), which will give you the meaning of those ACTION, EXTRA and CATEGORY constants.

**/

#if androidos
@:native("Titanium.Android")
extern class Android
{
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createIntent():Intent; 
	public static function createIntentChooser():Intent;
	public static function createNotification(options:Dynamic):Notification;
	public static function createService(intent:Intent):Service;
	public static function createServiceIntent(options:Dynamic):Intent;
	public static function isServiceRunning(intent:Intent):Bool;
	public static function startService(intent:Intent):Void;
	public static function stopService(intent:Intent):Void;
	public static function createBroadcastIntent():Intent; 
	public static function createPendingIntent(intent:Intent, flags:Int):PendingIntent;
	public static function createRemoteViews(?options:Dynamic):RemoteViews;
	
	// static constants
	public static var R:Dynamic;
	public static var ACTION_AIRPLANE_MODE_CHANGED:String;
	public static var ACTION_ALL_APPS:String;
	public static var ACTION_ANSWER:String;
	public static var ACTION_ATTACH_DATA:String;
	public static var ACTION_BATTERY_CHANGED:String; 
	public static var ACTION_BATTERY_LOW:String; 
	public static var ACTION_BATTERY_OKAY:String;
	public static var ACTION_BOOT_COMPLETED:String; 
	public static var ACTION_BUG_REPORT:String;
	public static var ACTION_CALL:String;
	public static var ACTION_CALL_BUTTON:String;
	public static var ACTION_CAMERA_BUTTON:String;
	public static var ACTION_CHOOSER:String; 
	public static var ACTION_CLOSE_SYSTEM_DIALOGS:String;
	public static var ACTION_CONFIGURATION_CHANGED:String; 
	public static var ACTION_CREATE_SHORTCUT:String;
	public static var ACTION_DATE_CHANGED:String; 
	public static var ACTION_DEFAULT:String; 
	public static var ACTION_DELETE:String; 
	public static var ACTION_DEVICE_STORAGE_LOW:String; 
	public static var ACTION_DIAL:String;
	public static var ACTION_EDIT:String;
	public static var ACTION_GET_CONTENT:String;
	public static var ACTION_GTALK_SERVICE_CONNECTED:String;
	public static var ACTION_GTALK_SERVICE_DISCONNECTED:String; 
	public static var ACTION_HEADSET_PLUG:String;
	public static var ACTION_INPUT_METHOD_CHANGED:String;
	public static var ACTION_INSERT:String; 
	public static var ACTION_INSERT_OR_EDIT:String;
	public static var ACTION_MAIN:String;
	public static var ACTION_MANAGE_PACKAGE_STORAGE:String; 
	public static var ACTION_MEDIA_BAD_REMOVAL:String; 
	public static var ACTION_MEDIA_BUTTON:String;
	public static var ACTION_MEDIA_CHECKING:String; 
	public static var ACTION_MEDIA_EJECT:String;
	public static var ACTION_MEDIA_MOUNTED:String; 
	public static var ACTION_MEDIA_NOFS:String;
	public static var ACTION_MEDIA_REMOVED:String; 
	public static var ACTION_MEDIA_SCANNER_FINISHED:String;
	public static var ACTION_MEDIA_SCANNER_SCAN_FILE:String;
	public static var ACTION_MEDIA_SCANNER_STARTED:String;
	public static var ACTION_MEDIA_SHARED:String;
	public static var ACTION_MEDIA_UNMOUNTABLE:String;
	public static var ACTION_MEDIA_UNMOUNTED:String;
	public static var ACTION_NEW_OUTGOING_CALL:String;
	public static var ACTION_PACKAGE_ADDED:String;
	public static var ACTION_PACKAGE_CHANGED:String;
	public static var ACTION_PACKAGE_DATA_CLEARED:String;
	public static var ACTION_PACKAGE_INSTALL:String;
	public static var ACTION_PACKAGE_REMOVED:String;
	public static var ACTION_PACKAGE_REPLACED:String;
	public static var ACTION_PACKAGE_RESTARTED:String;
	public static var ACTION_PICK:String;
	public static var ACTION_PICK_ACTIVITY:String;
	public static var ACTION_POWER_CONNECTED:String;
	public static var ACTION_POWER_DISCONNECTED:String;
	public static var ACTION_POWER_USAGE_SUMMARY:String;
	public static var ACTION_PROVIDER_CHANGED:String;
	public static var ACTION_REBOOT:String;
	public static var ACTION_RUN:String;
	public static var ACTION_SCREEN_OFF:String;
	public static var ACTION_SCREEN_ON:String;
	public static var ACTION_SEARCH:String;
	public static var ACTION_SEARCH_LONG_PRESS:String;
	public static var ACTION_SEND:String;
	public static var ACTION_SENDTO:String;
	public static var ACTION_SEND_MULTIPLE:String;
	public static var ACTION_SET_WALLPAPER:String;
	public static var ACTION_SHUTDOWN:String;
	public static var ACTION_SYNC:String;
	public static var ACTION_SYSTEM_TUTORIAL:String;
	public static var ACTION_TIME_CHANGED:String;
	public static var ACTION_TIME_TICK:String;
	public static var ACTION_UID_REMOVED:String;
	public static var ACTION_UMS_CONNECTED:String;
	public static var ACTION_UMS_DISCONNECTED:String;
	public static var ACTION_USER_PRESENT:String;
	public static var ACTION_VIEW:String;
	public static var ACTION_VOICE_COMMAND:String;
	public static var ACTION_WALLPAPER_CHANGED:String;
	public static var ACTION_WEB_SEARCH:String;
	public static var CATEGORY_ALTERNATIVE:String;
	public static var CATEGORY_BROWSABLE:String; 
	public static var CATEGORY_DEFAULT:String;
	public static var CATEGORY_DEVELOPMENT_PREFERENCE:String;
	public static var CATEGORY_EMBED:String;
	public static var CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:String;
	public static var CATEGORY_HOME:String;
	public static var CATEGORY_INFO:String;
	public static var CATEGORY_LAUNCHER:String;
	public static var CATEGORY_MONKEY:String;
	public static var CATEGORY_OPENABLE:String;
	public static var CATEGORY_PREFERENCE:String;
	public static var CATEGORY_SAMPLE_CODE:String;
	public static var CATEGORY_SELECTED_ALTERNATIVE:String;
	public static var CATEGORY_TAB:String;
	public static var CATEGORY_TEST:String;
	public static var CATEGORY_UNIT_TEST:String;
	public static var EXTRA_ALARM_COUNT:String;
	public static var EXTRA_BCC:String;
	public static var EXTRA_CC:String;
	public static var EXTRA_DATA_REMOVED:String;
	public static var EXTRA_DONT_KILL_APP:String;
	public static var EXTRA_EMAIL:String;
	public static var EXTRA_INTENT:String;
	public static var EXTRA_KEY_EVENT:String;
	public static var EXTRA_PHONE_NUMBER:String;
	public static var EXTRA_REPLACING:String;
	public static var EXTRA_SHORTCUT_ICON:String;
	public static var EXTRA_SHORTCUT_ICON_RESOURCE:String;
	public static var EXTRA_SHORTCUT_INTENT:String;
	public static var EXTRA_SHORTCUT_NAME:String;
	public static var EXTRA_STREAM:String;
	public static var EXTRA_SUBJECT:String;
	public static var EXTRA_TEMPLATE:String;
	public static var EXTRA_TEXT:String;
	public static var EXTRA_TITLE:String;
	public static var EXTRA_UID:String;
	public static var FILL_IN_ACTION:Int;
	public static var FILL_IN_CATEGORIES:Int;
	public static var FILL_IN_COMPONENT:Int;
	public static var FILL_IN_DATA:Int;
	public static var FILL_IN_PACKAGE:Int;
	public static var FLAG_ACTIVITY_BROUGHT_TO_FRONT:Int;
	public static var FLAG_ACTIVITY_CLEAR_TOP:Int;
	public static var FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:Int;
	public static var FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:Int;
	public static var FLAG_ACTIVITY_FORWARD_RESULT:Int;
	public static var FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:Int;
	public static var FLAG_ACTIVITY_MULTIPLE_TASK:Int;
	public static var FLAG_ACTIVITY_NO_ANIMATION:Int;
	public static var FLAG_ACTIVITY_NEW_TASK:Int;
	public static var FLAG_ACTIVITY_NO_HISTORY:Int;
	public static var FLAG_ACTIVITY_NO_USER_ACTION:Int;
	public static var FLAG_ACTIVITY_PREVIOUS_IS_TOP:Int;
	public static var FLAG_ACTIVITY_REORDER_TO_FRONT:Int;
	public static var FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:Int;
	public static var FLAG_ACTIVITY_SINGLE_TOP:Int;
	public static var FLAG_CANCEL_CURRENT:Int;
	public static var FLAG_DEBUG_LOG_RESOLUTION:Int;
	public static var FLAG_FROM_BACKGROUND:Int;
	public static var FLAG_GRANT_READ_URI_PERMISSION:Int;
	public static var FLAG_GRANT_WRITE_URI_PERMISSION:Int;
	public static var FLAG_NO_CREATE:Int;
	public static var FLAG_ONE_SHOT:Int;
	public static var FLAG_RECEIVER_REGISTERED_ONLY:Int;
	public static var FLAG_UPDATE_CURRENT:Int;
	public static var URI_INTENT_SCHEME:Int;
	public static var PENDING_INTENT_FOR_ACTIVITY:Int;
	public static var PENDING_INTENT_FOR_SERVICE:Int;
	public static var PENDING_INTENT_FOR_BROADCAST:Int;
	public static var PENDING_INTENT_MAX_VALUE:Int;
	public static var RESULT_OK:Int;
	public static var RESULT_CANCELED:Int;
	public static var RESULT_FIRST_USER:Int;
	public static var SCREEN_ORIENTATION_BEHIND:Int;
	public static var SCREEN_ORIENTATION_LANDSCAPE:Int;
	public static var SCREEN_ORIENTATION_NOSENSOR:Int;
	public static var SCREEN_ORIENTATION_PORTRAIT:Int;
	public static var SCREEN_ORIENTATION_SENSOR:Int;
	public static var SCREEN_ORIENTATION_UNSPECIFIED:Int;
	public static var SCREEN_ORIENTATION_USER:Int;
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

}
#end