package titanium.mobile.media;
import titanium.mobile.core.Dispatcher;

/**
Sound class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.Sound-object
**/

typedef SoundCompleteEvent = 
{ > Event,
	success:Bool
}

typedef SoundErrorEvent = 
{ > Event,
	message:String
}

typedef SoundInterruptedEvent = 
{ > Event,
}

typedef SoundResumeEvent = 
{ > Event,
	interruption:Bool
}

@:native("Titanium.Media.Sound")
extern class Sound extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):Sound
		return titanium.mobile.Media.createSound(params)
		
	// events
	public static inline var COMPLETE_EVENT = "complete";
	public static inline var ERROR_EVENT = "error";
	public static inline var INTERRUPTED_EVENT = "interrupted";
	public static inline var RESUME_EVENT = "resume";
	
	// properties
	public var allowBackground:Bool;
	public var audioSessionMode:Int;
	public var looping:Bool;
	public var paused:Bool;
	public var playing:Bool;
	public var time:Float;
	public var url:String;
	public var volume:Float;
	
	// methods
	public function getTime():Float;
	public function getVolume():Float;
	public function pause():Void;
	public function isLooping():Bool;
	public function isPaused():Bool;
	public function isPlaying():Bool;
	public function play():Void;
	public function release():Void;
	public function reset():Void;
	public function setLooping(looping:Bool):Void;
	public function setPaused(paused:Bool):Void;
	public function setTime(time:Float):Void;
	public function setVolume(volume:Float):Void;
	public function stop():Void;
}