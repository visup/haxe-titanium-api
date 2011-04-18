package titanium.mobile.media;
import titanium.mobile.core.Dispatcher;

/**
MusicPlayer class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.MusicPlayer-object

- namespace

Titanium.Media.MusicPlayer

- type

object

- description

The MusicPlayer instance returned from `Titanium.Media.createMusicPlayer`.  This object represents a music controller.

- since

1.4.0

- platforms

iphone, ipad

- properties

currentPlaybackTime[double]: the current point in song playback
playbackState[int]: the playback state; one of `Titanium.Media.MUSIC_PLAYER_STATE_STOPPED`, `Titanium.Media.MUSIC_PLAYER_STATE_PLAYING`, `Titanium.Media.MUSIC_PLAYER_STATE_PAUSED`, `Titanium.Media.MUSIC_PLAYER_STATE_INTERRUPTED`, `Titanium.Media.MUSIC_PLAYER_STATE_SKEEK_FORWARD`, `Titanium.Media.MUSIC_PLAYER_STATE_SEEK_BACKWARD`
repeatMode[int]: the repeat setting; one of `Titanium.Media.MUSIC_PLAYER_REPEAT_DEFAULT`, `Titanium.Media.MUSIC_PLAYER_REPEAT_NONE`, `Titanium.Media.MUSIC_PLAYER_REPEAT_ONE`, `Titanium.Media.MUSIC_PLAYER_REPEAT_ALL`
shuffleMode[int]: the shuffle setting; one of `Titanium.Media.MUSIC_PLAYER_SHUFFLE_DEFAULT`, `Titanium.Media.MUSIC_PLAYER_SHUFFLE_NONE`, `Titanium.Media.MUSIC_PLAYER_SHUFFLE_SONGS`, `Titanium.Media.MUSIC_PLAYER_SHUFFLE_ALBUMS`
volume[float]: a value between 0.0 and 1.0 indicating the volume level for the music player
nowPlaying[object]: an Item object which indicates the currently playing media

- methods

play: begin playback
pause: pause playback
stop: stop playback
seekForward: seek forward in the currently playing media
seekBackward: seek backward in the currently playing media
stopSeeking: end a seek operation
skipToNext: skip to the next media in the queue
skipToBeginning: skip to the beginning of the currently playing media
skipToPrevious: skip to the previous media in the queue
setQueue: set the media queue

- method : setQueue

queue[object]: a queue representation to set the player queue to.  Can be any of: A dictionary with an `items` key that is an array of `Titanium.Media.Item` objects, an array of `Titanium.Media.Item` objects, or a single `Titanium.Media.Item` object.

- events

stateChange: the playback state changed
playingChange: the currently playing media changed
volumeChange: the volume changed

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