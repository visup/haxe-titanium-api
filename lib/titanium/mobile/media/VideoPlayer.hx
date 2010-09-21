package titanium.mobile.media;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Size;

/**
VideoPlayer class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.VideoPlayer-object
**/


typedef VideoPlayerCompleteEvent = 
{ > Event,
	reason:Int
}

typedef VideoPlayerLoadEvent = 
{ > Event,
}

typedef VideoPlayerErrorEvent = 
{ > Event,
	message:String
}

typedef VideoPlayerDurationAvailableEvent = 
{ > Event,
	duration:Float
}

typedef VideoPlayerFullscreenEvent = 
{ > Event,
	entering:Bool
}

typedef VideoPlayerLoadStateEvent = 
{ > Event,
	loadState:Int
}

typedef VideoPlayerMediaTypesAvailableEvent = 
{ > Event,
	mediaTypes:Int
}

typedef VideoPlayerNaturalSizeAvailableEvent = 
{ > Event,
	naturalSize:Size
}

typedef VideoPlayerPlaybackStateEvent = 
{ > Event,
	playbackState:Int
}

typedef VideoPlayerPlayingEvent = 
{ > Event,
	url:String
}

typedef VideoPlayerPreloadEvent = 
{ > Event,
}

typedef VideoPlayerSourceChangeEvent = 
{ > Event,
	sourceChange:Int
}

typedef VideoPlayerThumbnailEvent = 
{ > Event,
	image:Blob
}

@:native("Titanium.Media.VideoPlayer")
extern class VideoPlayer extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):VideoPlayer
		return titanium.mobile.Media.createVideoPlayer(params)
		
	// events
	public static inline var CLICK_EVENT = "click";
	public static inline var COMPLETE_EVENT = "complete";
	public static inline var DURATION_AVAILABLE_EVENT = "durationAvailable";
	public static inline var ERROR_EVENT = "error";
	public static inline var FULLSCREEN_EVENT = "fullscreen";
	public static inline var LOAD_EVENT = "load";
	public static inline var LOADSTATE_EVENT = "loadstate";
	public static inline var MEDIA_TYPES_AVAILABLE_EVENT = "mediaTypesAvailable";
	public static inline var NATURAL_SIZE_AVAILABLE_EVENT = "naturalSizeAvailable";
	public static inline var PLAYBACK_STATE_EVENT = "playbackState";
	public static inline var PLAYING_EVENT = "playing";
	public static inline var PRELOAD_EVENT = "preload";
	public static inline var RESIZE_EVENT = "resize";
	public static inline var SOURCE_CHANGE_EVENT = "sourceChange";
	public static inline var THUMBNAIL_EVENT = "thumbnail";

	// properties
	public var autoPlay:Bool;
	public var duration:String;
	public var url:String;
	public var endPlaybackTime:Float;
	public var fullscreen:Bool;
	public var initialPlaybackTime:Float;
	public var loadState:Int;
	public var media:Dynamic;
	public var mediaControlStyle:Int;
	public var mediaTypes:Int;
	public var naturalSize:Size;
	public var playableDuration:Float;
	public var playbackState:Int;
	public var playing:Bool;
	public var repeatMode:Int;
	public var scalingMode:Int;
	public var sourceType:Int;
	public var useApplicationAudioSession:Bool;
	
	// methods
	public function play():Void;
	public function cancelAllThumbnailImageRequests():Void;
	public function release():Void;
	public function setBackgroundView(view:Dynamic):Void;
	public function setMedia(media:Dynamic):Void;
	public function requestThumbnailImagesAtTimes(times:Array<Float>, option:Int):Void;
	public function setUrl(url:String):Void;
	public function stop():Void;
	public function thumbnailImageAtTime(time:Float, option:Int):Blob;
}