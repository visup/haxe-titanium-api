package titanium.mobile.media;
import titanium.mobile.core.Dispatcher;

/**
MusicPlayer class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.MusicPlayer-object
**/

#if iphoneos

typedef MusicPlayerPlayingChangeEvent = 
{ > Event,
}

typedef MusicPlayerStateChangeEvent = 
{ > Event,
}

typedef MusicPlayerVolumeChangeEvent = 
{ > Event,
}

@:native("Titanium.Media.MusicPlayer")
extern class MusicPlayer extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):MusicPlayer
		return titanium.mobile.Media.createMusicPlayer(params)
		
	// events
	public static inline var PLAYING_CHANGE_EVENT = "playingChange";
	public static inline var STATE_CHANGE_EVENT = "stateChange";
	public static inline var VOLUME_CHANGE_EVENT = "volumeChange";
	
	// properties
	public var currentPlaybackTime:Float;
	public var nowPlaying:MediaItem;
	public var playbackState:Int;
	public var repeatMode:Int;
	public var shuffleMode:Int;
	public var volume:Float;
	
	// methods
	public function pause():Void;
	public function play():Void;
	public function seekBackward():Void;
	public function seekForward():Void;
	public function setQueue(queue:Dynamic):Void;
	public function skipToBeginning():Void;
	public function skipToNext():Void;
	public function skipToPrevious():Void;
	public function stop():Void;
	public function stopSeeking():Void;
}
#end