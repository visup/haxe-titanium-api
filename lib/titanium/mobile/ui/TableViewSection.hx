package titanium.mobile.ui;
import titanium.mobile.core.BaseView;
import titanium.mobile.core.Blob;
import titanium.mobile.core.Dispatcher;

/**
TableViewSection class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.TableViewSection-object.html

- namespace

Titanium.UI.TableViewSection

- type

object

- subtype

view

- description

A TableView section object created by the method `Titanium.UI.createTableViewSection`.

- since

0.9

- platforms

android, iphone, ipad

- properties

headerTitle[string]: the title of the section header
headerView[object]: a view to use instead of the default label when rendering the section header
footerTitle[string]: the title of the section footer
footerView[object]: a view to use instead of the default label when rendering the section footer
rowCount[int]: the (readonly) number of rows in the section

- methods

add: add a row to the section
remove: remove a remove from the section

- method : add

row[object]: the row object to add to the section

- method : remove

row[object]: the row object to remove from the section

- events

- example : Simple Table View Section Example

In this example, we create a section with the header `Hello` and add two rows to it.

~~~
var section = Titanium.UI.createTableViewSection();
section.headerTitle = "Hello";
var row1 = Titanium.UI.createTableViewRow({title:"Hello 1"});
var row2 = Titanium.UI.createTableViewRow({title:"Hello 2"});
section.add(row1);
section.add(row2);
tableview.add(section);
~~~

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