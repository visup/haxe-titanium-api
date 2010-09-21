package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
TableViewSection class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TableViewSection-object.html
**/

@:native("Titanium.UI.TableViewSection")
extern class TableViewSection extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):TableViewSection
		return titanium.mobile.UI.createTableViewSection(params)
		
	// properties
	public var footerTitle:String;
	public var footerView:Dynamic;
	public var headerTitle:String;
	public var headerView:Dynamic;
	public var rowCount:Int;
	
	// methods
	public function rowAtIndex(index:Int):TableViewRow;
}