package titanium.mobile.media;
import titanium.mobile.core.Blob;

/**
Item class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Media.Item-object
**/

#if iphoneos
@:native("Titanium.Media.Item")
extern class MediaItem
{
	// static constructor
	public inline static function create(?params:Dynamic):MediaItem
		return titanium.mobile.Media.createItem(params)
		
	// properties
	public var albumArtist:String;
	public var albumTitle:String;
	public var albumTrackCount:Int;
	public var albumTrackNumber:Int;
	public var artist:String;
	public var artwork:Blob;
	public var composer:String;
	public var discCount:Int;
	public var discNumber:Int;
	public var genre:String;
	public var isCompilation:Bool;
	public var lyrics:String;
	public var mediaType:Int;
	public var playCount:Int;
	public var playbackDuration:Float;
	public var podcastTitle:String;
	public var rating:Int;
	public var skipCount:Int;
	public var title:String;
}
#end