package titanium.mobile.media;
import titanium.mobile.core.Dispatcher;

/**
AudioPlayer class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.AudioPlayer-object.html

- namespace

Titanium.Media.AudioPlayer

- type

object

- subtype

proxy

- description

The AudioPlayer object is returned by [[Titanium.Media.createAudioPlayer]] and is used for streaming audio to the device and low-level control of the audio playback.

- since

0.9

- platforms

android, iphone, ipad

- properties

waiting[boolean]: returns boolean indicating if the playback is waiting for audio data from the network
idle[boolean]: returns boolean indicating if the playback is idle
playing[boolean]: returns boolean indicating if the playback is streaming audio
paused[boolean]: returns boolean indicating if the playback is paused
bitRate[double]: bit rate of the current playback stream
progress[double]: returns the current playback progress. Will return zero if sampleRate has not yet been detected
state[int]: returns int for the current state of playback
url[string]: returns the url for the current playback
allowBackground[boolean]: boolean to indicate if audio should continue playing even if Activity is paused (Android only as of 1.3.0)

STATE_INITIALIZED[int]: current playback is in the initialization state
STATE_STARTING[int]: current playback is in the starting playback state
STATE_WAITING_FOR_DATA[int]: current playback is in the waiting for audio data from the network state
STATE_WAITING_FOR_QUEUE[int]: current playback is in the waiting for audio data to fill the queue state
STATE_PLAYING[int]: current playback is in the playing state
STATE_BUFFERING[int]: current playback is in the buffering from the network state
STATE_STOPPING[int]: current playback is in the stopping state
STATE_STOPPED[int]: current playback is in the stopped state
STATE_PAUSED[int]: current playback is in the paused state

- methods 

setPaused: control the playback of the audio
setUrl: change the url of the audio playback
start: start playback
stop: stop playback
pause: pause playback
stateDescription: convert a state into a textual description suitable for display

- method : stateDescription, string

- method : setPaused

paused[boolean]: pass true to pause the current playback temporarily, false to unpause it

- method : setUrl

url[string]: the new url

- events

change: fired when the state of the playback changes
progress: fired once per second with the current progress during playback

- event : change

state: current state of playback
description: textual description of the state of playback


- event : progress

progress: current progress value

**/

typedef AudioPlayerChangeEvent = 
{ > Event,
	description:String,
	state:Int
}

typedef AudioPlayerProgressEvent = 
{ > Event,
	progress:Float
}

@:native("Titanium.Media.AudioPlayer")
extern class AudioPlayer extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):AudioPlayer
		return titanium.mobile.Media.createAudioPlayer(params)
		
	// events
	public static inline var CHANGE_EVENT = "change";
	public static inline var PROGRESS_EVENT = "progress";
	
	// constants
	public static var STATE_BUFFERING:Int;
	public static var STATE_INITIALIZED:Int;
	public static var STATE_PAUSED:Int;
	public static var STATE_PLAYING:Int;
	public static var STATE_STARTING:Int;
	public static var STATE_STOPPED:Int;
	public static var STATE_WAITING_FOR_DATA:Int;
	public static var STATE_WAITING_FOR_QUEUE:Int;
	
	// properties
	public var allowBackground:Bool;
	public var audioSessionMode:Int;
	public var bitRate:Float;
	public var idle:Bool;
	public var paused:Bool;
	public var playing:Bool;
	public var progress:Float;
	public var state:Int;
	public var url:String;
	public var waiting:Bool;
	
	// methods
	public function pause():Void;
	public function setPaused(paused:Bool):Void;
	public function setUrl(url:String):Void;
	public function start():Void;
	public function stateDescription():String;
	public function stop():Void;
}