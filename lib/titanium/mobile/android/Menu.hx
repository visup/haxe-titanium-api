package titanium.mobile.android;


/**
Menu class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Android.Menu-object

- namespace

Titanium.Android.Menu

- type

proxy

- description

The Titanium binding of an [Android Menu](http://developer.android.com/reference/android/view/Menu.html)

- since

1.5

- platforms

android

- methods
add: creates a [[Titanium.Android.MenuItem]] from the passed creation options.
clear: clear all items from the menu. You should release all references you have retained to [[Titanium.Android.MenuItem]] previously created.
close: close the menu if visible
findItem: locate a [[Titanium.Android.MenuItem]]
getItem: return the [[Titanium.Android.MenuItem]] at a specific index
hasVisibleItems: query for any visible menu items
removeGroup: remove all [[Titanium.Android.MenuItem]] with the specified groupId
removeItem: remove a specific [[Titanium.Android.MenuItem]] by the specified itemId
setGroupEnabled: enable or disable a group of [[Titanium.Android.MenuItem]] by groupId
setGroupVisible: show or hide a group of [[Titanium.Android.MenuItem]] by groupId
size: number of [[Titanium.Android.MenuItem]] in this menu

- method : add, `Titanium.Android.MenuItem`
options[object]: creation options. Supported options are itemId, groupId, title, and order.

- method : clear

- method : close

- method : findItem, `Titanium.Android.MenuItem`

item[object] : integer itemId or `Titanium.Android.MenuItem`

- method : getItem, `Titanium.Android.MenuItem`

index[int] :  item at index where index < size()

- method : hasVisibleItems, boolean

- method : removeGroup

groupId[int]: groupId of items to remove.

- method : removeItem

itemId[int]: itemId of item to remove.

- method : setGroupEnabled

groupId[int]: groupId to enable or disable
enabled[boolean]: true to enable, false to disable.

- method : setGroupVisible

groupId[int]: groupId to enable or disable
visible[boolean]: true to show, false to hide

- method : size, int

- properties

items[array]: array of `Titanium.Android.MenuItem`

- example : Simple menu create
~~~
activity.onCreateOptionsMenu = function(e) {
    var menu = e.menu;
    var menuItem = menu.add({ title: "Item 1" });
    menuItem.setIcon("item1.png");
    menuItem.addEventListener("click", function(e) {
        Ti.API.debug("I was clicked");
    });
};
~~~

- example : Dynamic menu create
~~~
var win = Ti.UI.createWindow({ fullscreen: true });

var LOGIN = 1, LOGOUT = 2;
var loggedIn = false;
activity.onCreateOptionsMenu = function(e) {
    var menu = e.menu;
    var login = menu.add({ title: "Login", itemId: LOGIN });
    login.setIcon("login.png");
    login.addEventListener("click", function(e) {
        loggedIn = true;
    });
    var logout = menu.add({ title: "Logout", itemId: LOGOUT });
    logout.setIcon("logout.png");
    logout.addEventListener("click", function(e) {
        loggedIn = false;
    });
};

activity.onPrepareOptionsMenu = function(e) {
    var menu = e.menu;
    menu.findItem(LOGIN).setVisible(!loggedIn);
    menu.findItem(LOGOUT).setVisible(loggedIn);
};
win.open();
~~~

**/

#if androidos
@:native("Titanium.Android.Menu")
extern class Menu
{
	// static methods	
	public static function add(options:Dynamic):MenuItem;
	public static function clear():Void;
	public static function close():Void;
	public static function findItem(item:Dynamic):MenuItem;
	public static function getItem(index:Int):MenuItem;
	public static function hasVisibleItems():Bool;
	public static function removeGroup(groupId:Int):Void;
	public static function removeItem(itemId:Int):Void;
	public static function setGroupEnabled(groupId:Int, enabled:Bool):Void;
	public static function setGroupVisible(groupId:Int, visible:Bool):Void;
	public static function size():Int;

	// static properties
	public static var items:Array<MenuItem>;

}
#end