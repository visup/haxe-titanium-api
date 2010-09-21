package titanium.mobile.media;
import titanium.mobile.core.Dispatcher;

/**
AudioPlayer class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.AudioPlayer-object.html
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