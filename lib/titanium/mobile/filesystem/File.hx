package titanium.mobile.filesystem;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
File class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Filesystem.File-object
**/

@:native("Titanium.Filesystem.File")
extern class File extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):File
		return titanium.mobile.Filesystem.createFile(params)
		
	// methods
	public function createDirectory():Bool;
	public function createFile():Bool;
	public function createTimestamp():Int;
	public function deleteFile():Bool;
	public function executable():Bool;
	public function exists():Bool;
	public function extension():String;
	public function getDirectoryListing():Array<String>;
	public function getParent():File;
	public function hidden():Bool;
	public function modificationTimestamp():Int;
	public function move(newPath:Dynamic):Bool;
	public function name():String;
	public function nativePath():String;
	public function read():Blob;
	public function readonly():Bool;
	public function rename(newName:String):Bool;
	public function setExecutable():Void;
	public function setHidden():Void;
	public function setReadonly():Void;
	public function spaceAvailable():Bool;
	public function symbolicLink():Bool;
	public function write(contents:Dynamic):Bool;
	public function writeable():Bool;
}