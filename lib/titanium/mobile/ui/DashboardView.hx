package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Point;

/**
DashboardView class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.DashboardView-object.html
**/
#if iphoneos

typedef DashboardViewClickEvent = 
{ > Event,
	item:DashboardItem,
	location:Point
}

typedef DashboardViewCommitEvent = 
{ > Event,
}

typedef DashboardViewEditEvent = 
{ > Event,
}

typedef DashboardViewDeleteEvent = 
{ > Event,
	item:DashboardItem
}

typedef DashboardViewMoveEvent = 
{ > Event,
	item:DashboardItem,
	items:Array<DashboardItem>
}

@:native("Titanium.UI.DashboardItem")
extern class DashboardView extends BaseView
{
	// static constructor
	public inline static function create(?params:Dynamic):DashboardView
		return titanium.mobile.UI.createDashboardView(params)
		
	// events
	public inline static var CLICK_EVENT = "click";
	public inline static var COMMIT_EVENT = "commit";
	public inline static var DELETE_EVENT = "delete";
	public inline static var EDIT_EVENT = "edit";
	public inline static var MOVE_EVENT = "move";
	
	// properties
	public var data:Array<DashboardItem>;
	public var wobble:Bool;
	
	// methods
	public function startEditing():Void;
	public function stopEditing():Void;
}
#end