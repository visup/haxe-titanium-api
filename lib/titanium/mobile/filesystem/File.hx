package titanium.mobile.filesystem;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
File class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Filesystem.File-object

- namespace

Titanium.Filesystem.File

- type

object

- subtype

proxy

- description

The File object which support various filesystem based operations.

- since

0.1

- platforms

android, iphone, ipad

- methods

nativePath: returns the fully resolved native path
exists: returns true if the file or directory exists on the device
readonly: returns true if the file is readonly
writeable: returns true if the file is writeable
symbolicLink: returns true if the file points to a symbolic link
executable: returns true if the file is executable
hidden: returns true if the file is hidden
setReadonly: make the file readonly
setExecutable: make the file executable
setHidden: make the file hidden
createTimestamp: return the created timestamp for the file
modificationTimestamp: return the last modification timestamp for the file
getDirectoryListing: return an array of paths in the directory of the file object
spaceAvailable: return boolean to indicate if the path has space available for storage
createDirectory: create a directory at the path for the file object
createFile: create a file path at the path for the file object
deleteDirectory: delete the file directory path
deleteFile: delete the file
move: move the file to another path 
rename: rename the file
read: return the contents of file as blob
write: write the contents to file
extension: return the file extension
getParent: return the file parent
name: the name of the file

- method : nativePath, string
- method : exists, boolean
- method : readonly, boolean
- method : symbolicLink, boolean
- method : writeable, boolean
- method : executable, boolean
- method : hidden, boolean
- method : createTimestamp, long
- method : modificationTimestamp, long
- method : getDirectoryListing, array
- method : spaceAvailable, boolean
- method : createDirectory, boolean
- method : createFile, boolean
- method : deleteFile, boolean
- method : read, Titanium.Blob
- method : extension, string
- method : getParent, Titanium.Filesystem.File
- method : name, string

- method : move, boolean

newpath[string|object]: new location

- method : rename, boolean

newname[string]: new name

- method : deleteDirectory, boolean

recursive[boolean]: pass true to recursively delete any contents. defaults to false

- method : write, boolean

contents[string|object]: write the contents of string, blob or [[Titanium.Filesystem.File]] to file


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
	public function deleteDirectory(?recursive:Bool):Bool;
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