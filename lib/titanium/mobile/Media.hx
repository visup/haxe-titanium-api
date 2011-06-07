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

- namespace

Titanium.Media

- type

module

- returns

object

- description

The top level Media module.  The Media module is used accessing the device's media related  functionality such as playing audio or recording video.

- since

0.1

- platforms

android, iphone, ipad


- methods

isMediaTypeSupported: return boolean to indicate if the media type is supported
showCamera: show the camera
openPhotoGallery: open the photo gallery picker
takeScreenshot: take a screen shot of the visible UI on the device
saveToPhotoGallery: save media to photo gallery / camera roll
beep: play a device beep notification
vibrate: play a device vibration
takePicture: use the device camera to capture a photo. this must be called after calling `showCamera` and only when `autohide` is set to false. this method will cause the media capture device to capture a photo and call the `success` callback.
hideCamera: hide the device camera UI. this must be called after calling `showCamera` and only when `autohide` is set to false. this method will cause the media capture device be hidden.
showMusicLibrary: show the music library.  iPhone and iPad only.
hideMusicLibrary: hide the music library.  This must be called after calling `showMusicLibrary` and only when `autohide` is set to false.  iPhone and iPad only.
startMicrophoneMonitor: start the monitoring of microphone sound level
stopMicrophoneMonitor: stop the monitoring of microphone sound level

- method : isMediaTypeSupported, boolean

media[string]: media type as a string of either `camera`, `photo` or `photogallery`.
type[string]: the type of media to check

- method : showCamera

options[object]: pass a dictionary with the following supported keys: `success` a function that will be called when the camera is completed, `error` a function that will be called upon receiving an error, `cancel` a function that will be called if the user presses the cancel button, `autohide` boolean if the camera should auto hide after the media capture is completed (defaults to true), `animated` boolean if the dialog should be animated (defaults to true) upon showing and hiding, `saveToPhotoGallery` boolean if the media should be saved to the photo gallery upon successful capture, `allowEditing` boolean if the media should be editable after capture in the UI interface, `mediaTypes` an array of media type constants supported by the capture device UI, `videoMaximumDuration` float duration on how long in milliseconds to allow capture before completing, `videoQuality` constant to indicate the video quality during capture, `showControls` boolean to indicate if the built-in UI controls should be displayed, `overlay` view which is added as an overlay to the camera UI (on top), `transform` an transformation matrix that applies to the camera UI transform.

- method : openPhotoGallery


options[object]: pass a dictionary with the following supported keys: `success` a function that will be called when the camera is completed, `error` a function that will be called upon receiving an error, `cancel` a function that will be called if the user presses the cancel button, `autohide` boolean if the camera should auto hide after the media capture is completed (defaults to true), `animated` boolean if the dialog should be animated (defaults to true) upon showing and hiding, `saveToPhotoGallery` boolean if the media should be saved to the photo gallery upon successful capture, `allowEditing` boolean if the media should be editable after capture in the UI interface, `mediaTypes` an array of media type constants supported by the capture device UI, `showControls` boolean to indicate if the built-in UI controls should be displayed, `overlay` view which is added as an overlay to the UI (on top), `transform` an transformation matrix that applies to the UI transform. For iPad, `popoverView` can be provided to position the photo gallery popover a specific view and `arrowDirection` can be provided to control the type of arrow and position of the gallery.

- method : takeScreenshot

callback[function] : function that will be called upon capture. the event property `media` will contain an image Blob object of the screenshot

- method : saveToPhotoGallery

media[object]: save the media passed to the cameras photo roll/media gallery. must be one of Blob object or File object or an error will be generated.
callbacks[object]: pass a dictionary with the following supported keys: `success` a function that will be called when the save succeeds, and `error` a function that will be called upon anreceiving an error

- method : showMusicLibrary

options[object]: pass a dictionary with the following supported keys: `success` a function that will be called when the camera is completed, `error` a function that will be called upon receiving an error, `cancel` a function that will be called if the user presses the cancel button, `autohide` boolean if the library listing should auto hide after selection is completed (defaults to true), `animated` boolean if the dialog should be animated (defaults to true) upon showing and hiding, `mediaTypes` an array of media type constants defining selectable media (see MUSIC_MEDIA_TYPE_* properties below) as either an array or a bitwise-or single value, `allowMultipleSelections` boolean whether or not more than one media selection is allowed

- properties

UNKNOWN_ERROR[int]: constant for unknown media error
DEVICE_BUSY[int]: constant for media device busy error
NO_CAMERA[int]: constant for media no camera error
NO_VIDEO[int]: constant for media no video error

VIDEO_CONTROL_DEFAULT[int]: constant for video controls default
VIDEO_CONTROL_VOLUME_ONLY[int]: constant for video controls volume only
VIDEO_CONTROL_HIDDEN[int]: constant for video controls hidden

VIDEO_SCALING_NONE[int]: constant for video scaling where the scaling is turn off. The movie will not be scaled.

VIDEO_SCALING_ASPECT_FIT[int]: constant for video aspect fit where the movie will be scaled until one dimension fits on the screen exactly. In the other dimension, the region between the edge of the movie and the edge of the screen is filled with a black bar. The aspect ratio of the movie is preserved.

VIDEO_SCALING_ASPECT_FILL[int]: constant for video aspect where the movie will be scaled until the movie fills the entire screen. Content at the edges of the larger of the two dimensions is clipped so that the other dimension fits the screen exactly. The aspect ratio of the movie is preserved.

VIDEO_SCALING_MODE_FILL[int]: constant for video aspect where the movie will be scaled until both dimensions fit the screen exactly. The aspect ratio of the movie is not preserved.

MEDIA_TYPE_VIDEO[int]: media type constant to signify video
MEDIA_TYPE_PHOTO[int]: media type constant to signify photo

QUALITY_HIGH[int]: media type constant to use high-quality video recording. Recorded files are suitable for on-device playback and for wired transfer to the Desktop using Image Capture; they are likely to be too large for transfer using Wi-Fi.

QUALITY_MEDIUM[int]: media type constant to use medium-quality video recording. Recorded files can usually be transferred using Wi-Fi. This is the default video quality setting.

QUALITY_LOW[int]: media type constant to use use low-quality video recording. Recorded files can usually be transferred over the cellular network.

AUDIO_HEADPHONES[int]: constant for line type headphones
AUDIO_HEADSET_INOUT[int]: constant line type headset in/out
AUDIO_RECEIVER_AND_MIC[int]: constant line type receiver and microphone
AUDIO_HEADPHONES_AND_MIC[int]: constant line type headphones and microphone
AUDIO_LINEOUT[int]: constant line type line out
AUDIO_SPEAKER[int]: constant line type speaker
AUDIO_MICROPHONE[int]: constant line type microphone
AUDIO_MUTED[int]: constant line type muted switch is on 
AUDIO_UNAVAILABLE[int]: constant line type unavailable
AUDIO_UNKNOWN[int]: constant line type unknown or not determined

AUDIO_FORMAT_LINEAR_PCM[int]: audio format Linear 16-bit, PCM encoding
AUDIO_FORMAT_ULAW[int]: audio format 8-bit muLaw encoding
AUDIO_FORMAT_ALAW[int]: audio format 8-bit aLaw encoding
AUDIO_FORMAT_IMA4[int]: audio format Apple IMA4 encoding
AUDIO_FORMAT_ILBC[int]: audio format iLBC encoding
AUDIO_FORMAT_APPLE_LOSSLESS[int]: audio format apple lossless encoding
AUDIO_FORMAT_AAC[int]: audio format MPEG4 AAC encoding

AUDIO_FILEFORMAT_WAVE[int]: audio file format WAVE
AUDIO_FILEFORMAT_AIFF[int]: audio file format AIFF
AUDIO_FILEFORMAT_MP3[int]: audio file format MP3
AUDIO_FILEFORMAT_MP4[int]: audio file format MP4
AUDIO_FILEFORMAT_MP4A[int]: audio file format MP4A
AUDIO_FILEFORMAT_CAF[int]: audio file format Apple Compressed Audio Format (CAF)
AUDIO_FILEFORMAT_3GPP[int]: audio file format 3GPP
AUDIO_FILEFORMAT_3GP2[int]: audio file format 3GPP-2
AUDIO_FILEFORMAT_AMR[int]: audio file format AMR

volume[float]: the current volume of the playback device
audioPlaying[boolean]: returns true if the device is playing audio
canRecord[boolean]: returns true if the device has recording input device available
audioLineType[int]: returns the line type constant for the current line type
availableCameraMediaTypes[array]: return an array of media type constants supported for the camera
availablePhotoMediaTypes[array]: return an array of media type constants supported for the photo
availablePhotoGalleryMediaTypes[array]: return an array of media type constants supported for saving to the photo gallery
isCameraSupported[boolean]: returns true if the device has camera support

systemMusicPlayer[object]: an instance of `Titanium.Media.MusicPlayer` representing the system-wide music player.  iPhone/iPad only
appMusicPlayer[object]: an instance of `Titanium.Media.MusicPlayer` representing the app-specific music player.  iPhone/iPad only

MUSIC_MEDIA_TYPE_MUSIC[int]: media containing music content
MUSIC_MEDIA_TYPE_PODCAST[int]: media containing podcast content
MUSIC_MEDIA_TYPE_AUDIOBOOK[int]: media containing audiobook content
MUSIC_MEDIA_TYPE_ANY_AUDIO[int]: media containing any audio content
MUSIC_MEDIA_TYPE_ALL[int]: media containing any content

MUSIC_PLAYER_STATE_STOPPED[int]: constant for stopped state
MUSIC_PLAYER_STATE_PLAYING[int]: constant for playing state
MUSIC_PLAYER_STATE_PAUSED[int]: constant for paused state
MUSIC_PLAYER_STATE_INTERRUPTED[int]: constant for interrupted state
MUSIC_PLAYER_STATE_SKEEK_FORWARD[int]: constant for forward seek state
MUSIC_PLAYER_STATE_SEEK_BACKWARD[int]: constant for backward seek state

MUSIC_PLAYER_REPEAT_DEFAULT[int]: constant for user default repeat setting
MUSIC_PLAYER_REPEAT_NONE[int]: constant for no repeat setting
MUSIC_PLAYER_REPEAT_ONE[int]: constant for repeating one item setting
MUSIC_PLAYER_REPEAT_ALL[int]: constant for repeating all setting

MUSIC_PLAYER_SHUFFLE_DEFAULT[int]: constant for user default shuffle setting
MUSIC_PLAYER_SHUFFLE_NONE[int]: constant for no shuffle setting
MUSIC_PLAYER_SHUFFLE_SONGS[int]: constant for shuffling songs setting
MUSIC_PLAYER_SHUFFLE_ALBUMS[int]: constant for shuffling complete albums setting

peakMicrophonePower[float]: return the current microphone level peak power in dB or -1 if microphone monitoring is disabled

averageMicrophonePower[float]: return the current average microphone level in dB or -1 if microphone monitoring is disabled

AUDIO_SESSION_MODE_AMBIENT[int]: For long-duration sounds such as rain, car engine noise, and so on. It is also for 'play along' style applications, such a virtual piano that a user plays over iPod audio.
When you use this category, audio from built-in applications, such as the iPod, mixes with your audio. Your audio is silenced when the Ring/Silent switch is set to silent or when the screen locks.

AUDIO_SESSION_MODE_SOLO_AMBIENT[int]: The solo ambient sound category is for long-duration sounds such as rain, car engine noise, and so on. When you use this category, audio from built-in applications, such as the iPod, is silenced. Your audio is silenced when the Ring/Silent switch is set to `silent` or when the screen locks.

AUDIO_SESSION_MODE_PLAYBACK[int]: For playing recorded music or other sounds that are central to the successful use of your application. When using this mode, your application audio continues with the Ring/Silent switch set to silent or when the screen locks. This property normally disallows iPod audio to mix with application audio

AUDIO_SESSION_MODE_RECORD[int]: For recording audio; it silences playback audio.

AUDIO_SESSION_MODE_PLAY_AND_RECORD[int]: Allows recording (input) and playback (output) of audio, such as for a VOIP (voice over IP) application. This category is appropriate for simultaneous recording and playback, and also for applications that record and play back but not simultaneously. If you want to ensure that sounds such as Messages alerts do not play while your application is recording, use  [[Titanium.Media.AUDIO_SESSION_MODE_RECORD]] instead. This category normally disallows iPod audio to mix with application audio.

audioSessionMode[int]: a constant for the audio session mode to be used. Must be set while the audio session is inactive (no sounds are playing, no listeners for audio properties on the Media module, but the iPod may be active).


# NOTE: these are introduced in 3.2
VIDEO_CONTROL_NONE[int]: No controls. Used in conjunction with movieControlStyle property of [[Titanium.Media.VideoPlayer]] in iPhone 3.2+
VIDEO_CONTROL_EMBEDDED[int]: Controls for an embedded view. Used in conjunction with movieControlStyle property of [[Titanium.Media.VideoPlayer]] in iPhone 3.2+
VIDEO_CONTROL_FULLSCREEN[int]: Controls for fullscreen. Used in conjunction with movieControlStyle property of [[Titanium.Media.VideoPlayer]] in iPhone 3.2+

VIDEO_MEDIA_TYPE_NONE[int]: An unknown type of media in the movie returned by [[Titanium.Media.VideoPlayer]] `mediaTypes` property.
VIDEO_MEDIA_TYPE_VIDEO[int]: A video type of media in the movie returned by [[Titanium.Media.VideoPlayer]] `mediaTypes` property
VIDEO_MEDIA_TYPE_AUDIO[int]: A audio type of media in the movie returned by [[Titanium.Media.VideoPlayer]] `mediaTypes` property

VIDEO_SOURCE_TYPE_UNKNOWN[int]: the video source type is unknown. Related to the `sourceType` property of [[Titanium.Media.VideoPlayer]]
VIDEO_SOURCE_TYPE_FILE[int]: the video source type is a file. Related to the `sourceType` property of [[Titanium.Media.VideoPlayer]]
VIDEO_SOURCE_TYPE_STREAMING[int]: the video source type is a remote stream. Related to the `sourceType` property of [[Titanium.Media.VideoPlayer]]

VIDEO_PLAYBACK_STATE_STOPPED[int]: playback has stopped
VIDEO_PLAYBACK_STATE_PLAYING[int]: playback is playing
VIDEO_PLAYBACK_STATE_PAUSED[int]: playback is paused
VIDEO_PLAYBACK_STATE_INTERRUPTED[int]: playback has been interrupted
VIDEO_PLAYBACK_STATE_SEEKING_FORWARD[int]: playback is seeking forward
VIDEO_PLAYBACK_STATE_SEEKING_BACKWARD[int]: playback is rewinding

VIDEO_LOAD_STATE_UNKNOWN[int]: the current load state is not known
VIDEO_LOAD_STATE_PLAYABLE[int]: the current media is playable
VIDEO_LOAD_STATE_PLAYTHROUGH_OK[int]: playback will be automatically started in this state when `autoplay` is true
VIDEO_LOAD_STATE_STALLED[int]: playback will be automatically paused in this state, if started

VIDEO_REPEAT_MODE_NONE[int]: the video will not repeat
VIDEO_REPEAT_MODE_ONE[int]: the video will repeat once

VIDEO_TIME_OPTION_NEAREST_KEYFRAME[int]: use the closest keyframe in the time
VIDEO_TIME_OPTION_EXACT[int]: use the exact time

VIDEO_FINISH_REASON_PLAYBACK_ENDED[int]: the video playback ended normally
VIDEO_FINISH_REASON_PLAYBACK_ERROR[int]: the video playback ended abnormally
VIDEO_FINISH_REASON_USER_EXITED[int]: the video playback ended by user action (such as clicking the `Done` button)

- events

linechange: fired when a audio line type change is detected
volume: fired when the volume output changes
recordinginput: fired when availablity of recording input changes

- event : volume

volume: float of the new volume in dB

- event : recordinginput

available: bool indicating availability of recording device


**/


typedef VolumeEvent = 
{ > Event,
	volume:Float
}

typedef RecordingInputEvent = 
{ > Event,
	available:Bool
}

@:native("Titanium.Media")
extern class Media
{
	// events
	public static inline var LINE_CHANGE_EVENT = "linechange";
	public static inline var VOLUME_EVENT = "volume";
	public static inline var RECORDING_INPUT_EVENT = "recordinginput";
	
	// static constants
	public static var AUDIO_FILEFORMAT_3GP2:Int;
	public static var AUDIO_FILEFORMAT_3GPP:Int;
	public static var AUDIO_FILEFORMAT_AIFF:Int;
	public static var AUDIO_FILEFORMAT_AMR:Int;
	public static var AUDIO_FILEFORMAT_CAF:Int;
	public static var AUDIO_FILEFORMAT_MP3:Int;
	public static var AUDIO_FILEFORMAT_MP4:Int;
	public static var AUDIO_FILEFORMAT_MP4A:Int;
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
	public static var MUSIC_PLAYER_REPEAT_ALL:Int;
	public static var MUSIC_PLAYER_REPEAT_DEFAULT:Int;
	public static var MUSIC_PLAYER_REPEAT_NONE:Int;
	public static var MUSIC_PLAYER_REPEAT_ONE:Int;
	public static var MUSIC_PLAYER_SHUFFLE_ALBUMS:Int;
	public static var MUSIC_PLAYER_SHUFFLE_DEFAULT:Int;
	public static var MUSIC_PLAYER_SHUFFLE_NONE:Int;
	public static var MUSIC_PLAYER_SHUFFLE_SONGS:Int;
	public static var MUSIC_PLAYER_STATE_INTERRUPTED:Int;
	public static var MUSIC_PLAYER_STATE_STOPPED:Int;
	public static var MUSIC_PLAYER_STATE_PLAYING:Int;
	public static var MUSIC_PLAYER_STATE_PAUSED:Int;
	public static var MUSIC_PLAYER_STATE_SKEEK_FORWARD:Int;
	public static var MUSIC_PLAYER_STATE_SEEK_BACKWARD:Int;
	public static var MUSIC_MEDIA_TYPE_ALL:Int;
	public static var MUSIC_MEDIA_TYPE_AUDIOBOOK:Int;
	public static var MUSIC_MEDIA_TYPE_MUSIC:Int;
	public static var MUSIC_MEDIA_TYPE_PODCAST:Int;
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
	public static var audioSessionMode:Int;
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

	public static function isMediaTypeSupported(media:String, type:String):Bool;
	public static function showCamera(options:Dynamic):Void;
	public static function openPhotoGallery(options:Dynamic):Void;
	public static function takeScreenshot(callBack:Dynamic->Void):Void;
	public static function saveToPhotoGallery(media:Dynamic, callBack:Dynamic->Void):Void;	
	public static function beep():Void;
	public static function vibrate():Void;
	public static function takePicture():Void;
	public static function hideCamera():Void;
	#if iphoneos
	public static function showMusicLibrary(options:Dynamic):Void;
	public static function hideMusicLibrary():Void;
	#end
	public static function startMicrophoneMonitor():Void;
	public static function stopMicrophoneMonitor():Void;

	public static function createAudioPlayer(params:Dynamic):AudioPlayer;
	public static function createAudioRecorder(params:Dynamic):AudioRecorder;
	public static function createSound(params:Dynamic):Sound;
	public static function createVideoPlayer(params:Dynamic):VideoPlayer;

	#if iphoneos
	public static function createMusicPlayer(params:Dynamic):MusicPlayer;
	public static function createItem(params:Dynamic):MediaItem;
	#end
}