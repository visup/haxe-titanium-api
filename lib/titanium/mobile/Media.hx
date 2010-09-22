package titanium.mobile;

import titanium.mobile.core.Dispatcher;
import titanium.mobile.media.AudioPlayer;
import titanium.mobile.media.AudioRecorder;
import titanium.mobile.media.MediaItem;
import titanium.mobile.media.Sound;
import titanium.mobile.media.VideoPlayer;
#if iphoneos
import titanium.mobile.media.MusicPlayer;
#end

/**
Media class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media-module
**/

typedef RecordingInputEvent = 
{ > Event,
	available:Bool
}

typedef VolumeEvent = 
{ > Event,
	volume:Float
}

@:native("Titanium.Media")
extern class Media
{
	// events
	public static inline var LINE_CHANGE_EVENT = "linechange";
	public static inline var RECORDING_INPUT_EVENT = "recordinginput";
	public static inline var VOLUME_EVENT = "volume";
	
	// static constants
	public static var AUDIO_FILEFORMAT_3GP2:Int;
	public static var AUDIO_FILEFORMAT_3GPP:Int;
	public static var AUDIO_FILEFORMAT_AIFF:Int;
	public static var AUDIO_FILEFORMAT_AMR:Int;
	public static var AUDIO_FILEFORMAT_CAF:Int;
	public static var AUDIO_FILEFORMAT_MP3:Int;
	public static var AUDIO_FILEFORMAT_MP4:Int;
	public static var AUDIO_FILEFORMAT_WAVE:Int;
	public static var AUDIO_FORMAT_AAC:Int;
	public static var AUDIO_FORMAT_ALAW:Int;
	public static var AUDIO_FORMAT_APPLE_LOSSLESS:Int;
	public static var AUDIO_FORMAT_ILBC:Int;
	public static var AUDIO_FORMAT_IMA4:Int;
	public static var AUDIO_FORMAT_LINEAR_PCM:Int;
	public static var AUDIO_FORMAT_ULAW:Int;
	public static var AUDIO_HEADPHONES:Int;
	public static var AUDIO_HEADPHONES_AND_MIC:Int;
	public static var AUDIO_HEADSET_INOUT:Int;
	public static var AUDIO_LINEOUT:Int;
	public static var AUDIO_MICROPHONE:Int;
	public static var AUDIO_MUTED:Int;
	public static var AUDIO_RECEIVER_AND_MIC:Int;
	public static var AUDIO_SESSION_MODE_AMBIENT:Int;
	public static var AUDIO_SESSION_MODE_PLAYBACK:Int;
	public static var AUDIO_SESSION_MODE_PLAY_AND_RECORD:Int;
	public static var AUDIO_SESSION_MODE_RECORD:Int;
	public static var AUDIO_SESSION_MODE_SOLO_AMBIENT:Int;
	public static var AUDIO_SPEAKER:Int;
	public static var AUDIO_UNAVAILABLE:Int;
	public static var AUDIO_UNKNOWN:Int;
	public static var DEVICE_BUSY:Int;
	public static var MEDIA_TYPE_PHOTO:Int;
	public static var MEDIA_TYPE_VIDEO:Int;
	public static var MEDIA_TYPE_TYPE_ALL:Int;
	public static var MEDIA_TYPE_TYPE_ANY_AUDIO:Int;
	public static var MEDIA_TYPE_TYPE_AUDIOBOOK:Int;
	public static var MEDIA_TYPE_TYPE_MUSIC:Int;
	public static var MEDIA_TYPE_TYPE_PODCAST:Int;
	public static var MEDIA_PLAYER_REPEAT_ALL:Int;
	public static var MEDIA_PLAYER_REPEAT_DEFAULT:Int;
	public static var MEDIA_PLAYER_REPEAT_NONE:Int;
	public static var MEDIA_PLAYER_REPEAT_ONE:Int;
	public static var MEDIA_PLAYER_SHUFFLE_ALBUMS:Int;
	public static var MEDIA_PLAYER_SHUFFLE_DEFAULT:Int;
	public static var MEDIA_PLAYER_SHUFFLE_NONE:Int;
	public static var MEDIA_PLAYER_SHUFFLE_SONGS:Int;
	public static var MEDIA_PLAYER_STATE_INTERRUPTED:Int;
	public static var MEDIA_PLAYER_STATE_PAUSED:Int;
	public static var MEDIA_PLAYER_STATE_PLAYING:Int;
	public static var MEDIA_PLAYER_STATE_SEEK_BACKWARD:Int;
	public static var MEDIA_PLAYER_STATE_SKEEK_FORWARD:Int;
	public static var MEDIA_PLAYER_STATE_STOPPED:Int;
	public static var NO_CAMERA:Int;
	public static var NO_VIDEO:Int;
	public static var QUALITY_HIGH:Int;
	public static var QUALITY_LOW:Int;
	public static var QUALITY_MEDIUM:Int;
	public static var UNKNOWN_ERROR:Int;
	public static var VIDEO_CONTROL_DEFAULT:Int;
	public static var VIDEO_CONTROL_EMBEDDED:Int;
	public static var VIDEO_CONTROL_FULLSCREEN:Int;
	public static var VIDEO_CONTROL_HIDDEN:Int;
	public static var VIDEO_CONTROL_NONE:Int;
	public static var VIDEO_CONTROL_VOLUME_ONLY:Int;
	public static var VIDEO_FINISH_REASON_PLAYBACK_ENDED:Int;
	public static var VIDEO_FINISH_REASON_PLAYBACK_ERROR:Int;
	public static var VIDEO_FINISH_REASON_USER_EXITED:Int;
	public static var VIDEO_LOAD_STATE_PLAYABLE:Int;
	public static var VIDEO_LOAD_STATE_PLAYTHROUGH_OK:Int;
	public static var VIDEO_LOAD_STATE_STALLED:Int;
	public static var VIDEO_LOAD_STATE_UNKNOWN:Int;
	public static var VIDEO_MEDIA_TYPE_AUDIO:Int;
	public static var VIDEO_MEDIA_TYPE_NONE:Int;
	public static var VIDEO_MEDIA_TYPE_VIDEO:Int;
	public static var VIDEO_PLAYBACK_STATE_INTERRUPTED:Int;
	public static var VIDEO_PLAYBACK_STATE_PAUSED:Int;
	public static var VIDEO_PLAYBACK_STATE_PLAYING:Int;
	public static var VIDEO_PLAYBACK_STATE_SEEKING_BACKWARD:Int;
	public static var VIDEO_PLAYBACK_STATE_SEEKING_FORWARD:Int;
	public static var VIDEO_PLAYBACK_STATE_STOPPED:Int;
	public static var VIDEO_REPEAT_MODE_NONE:Int;
	public static var VIDEO_REPEAT_MODE_ONE:Int;
	public static var VIDEO_SCALING_ASPECT_FILL:Int;
	public static var VIDEO_SCALING_ASPECT_FIT:Int;
	public static var VIDEO_SCALING_MODE_FILL:Int;
	public static var VIDEO_SCALING_MODE_NONE:Int;
	public static var VIDEO_SOURCE_TYPE_FILE:Int;
	public static var VIDEO_SOURCE_TYPE_STREAMING:Int;
	public static var VIDEO_SOURCE_TYPE_UNKNOWN:Int;
	public static var VIDEO_TIME_OPTION_EXACT:Int;
	public static var VIDEO_TIME_OPTION_NEAREST_KEYFRAME:Int;
	
	// properties
	#if iphoneos
	public static var appMusicPlayer:MusicPlayer;
	public static var systemMusicPlayer:MusicPlayer;
	#end
	public static var audioLineType:Int;
	public static var audioPlaying:Bool;
	public static var availableCameraMediaTypes:Array<Int>;
	public static var availablePhotoGalleryMediaTypes:Array<Int>;
	public static var availablePhotoMediaTypes:Array<Int>;
	public static var averageMicrophonePower:Float;
	public static var canRecord:Bool;
	public static var defaultAudioSessionMode:Int;
	public static var isCameraSupported:Bool;
	public static var peakMicrophonePower:Float;
	public static var volume:Float;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function beep():Void;
	public static function createAudioPlayer(params:Dynamic):AudioPlayer;
	public static function createAudioRecorder(params:Dynamic):AudioRecorder;
	public static function createSound(params:Dynamic):Sound;
	public static function createVideoPlayer(params:Dynamic):VideoPlayer;
	public static function hideCamera():Void;
	public static function hideMusicLibrary():Void;
	public static function isMediaTypeSupported():Bool;
	public static function openPhotoGallery():Void;
	public static function saveToPhotoGallery(media:Dynamic):Void;
	public static function showCamera(options:Dynamic):Void;
	public static function startMicrophoneMonitor():Void;
	public static function stopMicrophoneMonitor():Void;
	public static function takePicture():Void;
	public static function takeScreenshot(onCapture: { media:Dynamic }->Void):Void;
	public static function vibrate():Void;
	#if iphoneos
	public static function createMusicPlayer(params:Dynamic):MusicPlayer;s
	public static function createItem(params:Dynamic):MediaItem;
	public static function showMusicLibrary(options:Dynamic):Void;
	#end
}