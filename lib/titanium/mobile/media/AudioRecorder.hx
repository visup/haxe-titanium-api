package titanium.mobile.media;
import titanium.mobile.core.Dispatcher;

/**
AudioRecorder class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.AudioRecorder-object

- namespace

Titanium.Media.AudioRecorder

- type

object

- subtype

proxy

- description

The AudioRecorder object is returned by [[Titanium.Media.createAudioRecorder]] and is used for recording audio from the device microphone.

- since

0.9

- platforms

iphone, ipad

- properties

recording[boolean]: readonly property to indicate if recording
stopped[boolean]: readonly property to indicate if stopped
paused[boolean]: readonly property to indicate if paused
compression[int]: audio compression constant to be used for the recording
format[int]: audio format constant for used for the recording

- methods

start: called to start recording audio
stop: called to stop recording audio
pause: called to temporarily pause recording
resume: called to resume audio recording


**/

@:native("Titanium.Media.AudioRecorder")
extern class AudioRecorder extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):AudioRecorder
		return titanium.mobile.Media.createAudioRecorder(params)
		
	// properties
	public var compression:Int;
	public var format:Int;
	public var paused:Bool;
	public var recording:Bool;
	public var stopped:Bool;
	
	// methods
	public function pause():Void;
	public function resume():Void;
	public function start():Void;
	public function stop():Void;
}