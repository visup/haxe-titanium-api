package titanium.mobile.ui.iphone;

/**
IPhoneSystemIcon class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.iPhone.SystemIcon-object

- namespace

Titanium.UI.iPhone.SystemButton

- type

proxy

- description

A set of constants for the system button style for buttons.

- since

0.8

- platforms

iphone, ipad

- properties

ACTION[int]: action icon. Usable in nav bars and toolbars only.
CAMERA[int]: camera icon. Usable in nav bars and toolbars only.
COMPOSE[int]: compose icon. Usable in nav bars and toolbars only.
BOOKMARKS[int]: bookmarks icon. Usable in nav bars and toolbars only.
ADD[int]: add icon. Usable in nav bars and toolbars only.
TRASH[int]: trash icon. Usable in nav bars and toolbars only.
REPLY[int]: reply icon. Usable in nav bars and toolbars only.
STOP[int]: stop icon. Usable in nav bars and toolbars only.
REFRESH[int]: refresh icon. Usable in nav bars and toolbars only.
PLAY[int]: play icon. Usable in nav bars and toolbars only.
PAUSE[int]: pause icon. Usable in nav bars and toolbars only.
FAST_FORWARD[int]: fast forward icon. Usable in nav bars and toolbars only.
REWIND[int]: rewind icon. Usable in nav bars and toolbars only.
EDIT[int]: edit icon. localized. Usable in nav bars and toolbars only.
CANCEL[int]: cancel icon. localized. Usable in nav bars and toolbars only.
SAVE[int]: save icon. localized. Usable in nav bars and toolbars only.
ORGANIZE[int]: organize icon. Usable in nav bars and toolbars only.
DONE[int]: done icon. localized. Usable in nav bars and toolbars only.
FLEXIBLE_SPACE[int]: Blank space to add between other items. The space is distributed equally between the other items. Other item properties are ignored when this value is set.
FIXED_SPACE[int]: Blank space to add between other items. Only the `width` property is used when this value is set.

ACTIVITY[int]: special style that shows an activity indicator. when visible, the activity indicator is already started.

SPINNER[int]: same as ACTIVITY

INFO_LIGHT[int]: a light style info circle icon
INFO_DARK[int]: a dark style info circle icon

DISCLOSURE[int]: disclosure style icon
CONTACT_ADD[int]: green style plus (+) icon

**/
#if iphoneos

@:native("Titanium.UI.iPhone.SystemButton")
extern class IPhoneSystemButton
{
	// constants
	/*public static var ACTION:Int;
	public static var CAMERA:Int;
	public static var COMPOSE:Int;
	public static var BOOKMARKS:Int;
	public static var ADD:Int;
	public static var TRASH:Int;
	public static var REPLY:Int;
	public static var STOP:Int;
	public static var REFRESH:Int;
	public static var PLAY:Int;
	public static var PAUSE:Int;
	public static var FAST_FORWARD:Int;
	public static var REWIND:Int;
	public static var EDIT:Int;
	public static var CANCEL:Int;
	public static var SAVE:Int;
	public static var ORGANIZE:Int;
	public static var DONE:Int;
	public static var FLEXIBLE_SPACE:Int;
	public static var FIXED_SPACE:Int;
	public static var SPINNER:Int;
	public static var INFO_LIGHT:Int;
	public static var INFO_DARK:Int;*/
	public static var DISCLOSURE:Int;
	//public static var CONTACT_ADD:Int;
}
#end