package titanium.mobile.media;
import titanium.mobile.core.Dispatcher;

/**
Android class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/1.7.0.RC1/Titanium.Media.Android-module

- namespace

Titanium.Media.Android

- type

module

- returns

object

- description

Android-specific media-related functionality.

- since

1.7.0

- platforms

android


- methods
scanMediaFiles: Use the [Android MediaScannerConnection](http://developer.android.com/reference/android/media/MediaScannerConnection.html) to request immediate scan of particular files so that they become available to the appropriate media providers (Gallery, etc.).
setSystemWallpaper: (Android only) Set the system homescreen wallpaper


- method : scanMediaFiles, void

paths[Array<String>]: Array of paths to the files you want to be scanned.
mimeTypes[Array<String>]: Array of mime types for the files in the paths parameter.  Can be null, in which case the mime type will be inferred at scan time.
callback[function]: A function that will be called when each file is finished being scanned.  Check the callback argument's "path" and "uri" properties to see the path that was scanned and the resulting content uri.

- method : setSystemWallpaper, void
image[object]: Image blob such as what can be retrieved via callbacks for `Titanium.Media.openPhotoGallery` and `Titanium.Media.showCamera`, as well as from the return value of `Titanium.Filesystem.File.read`.
scale[boolean]: Set to true if you want the image to be scaled with respect to the system wallpaper desired width, or false to leave it as-is.


**/
#if androidos
@:native("Titanium.Media.Android")
extern class Android extends Dispatcher
{	
	// static methods
	public static function scanMediaFiles(paths:Array<String>, mimeTypes:Array<String>, callBack:Dynamic->Void):Void;
	public static function setSystemWallpaper(image:Dynamic, scale:Bool):Void;
}
#end