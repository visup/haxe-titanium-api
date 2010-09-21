package titanium.mobile.contacts;

/**
Contacts.Group class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Contacts.Group-object.html
**/

@:native("Titanium.Contacts.Group")
extern class ContactsGroup
{
	// static constructor
	public inline static function create(?params:Dynamic):ContactsGroup
		return titanium.mobile.Contacts.createGroup(params)
	
	// properties
	public var name:String;
	
	// methods
	public function add(person:ContactsPerson):Void;
	public function members():Array<ContactsPerson>;
	public function remove(person:ContactsPerson):Void;
	public function sortedMembers(sortMethod:Int):Array<ContactsPerson>;
}