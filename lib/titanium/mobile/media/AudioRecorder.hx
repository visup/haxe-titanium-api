package titanium.mobile.media;
import titanium.mobile.core.Dispatcher;

/**
AudioRecorder class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.AudioRecorder-object
**/

@:native("Titanium.Media.AudioRecorder")
extern class AudioRecorder extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):AudioRecorder
		return titanium.mobile.Media.createAudioRecorder(params)
		
	// properties
	public var audioSessionMode:Int;
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