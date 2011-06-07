package titanium.mobile.contacts;

/**
Contacts.Group class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Contacts.Group-object.html

- namespace

Titanium.Contacts.Group

- type

object

- description

An object which represents a group in the contacts database.

- since

1.4.0

- platforms

iphone, ipad

- properties

name[string]: The name of the group

- methods

members: The complete list of members of the group
sortedMembers: A list of sorted members
add: Adds a person to the group
remove: Removes a person from the group

- method : sortedMembers

sortBy[int]: Method for sorting.  Must be one of  `Titanium.Contacts.CONTACTS_SORT_FIRST_NAME` or `Titanium.Contacts.CONTACTS_SORT_LAST_NAME`

- method : add

person[object]: `Titanium.Contacts.Person` object to remove from the group

- method : remove

person[object]: `Titanium.Contacts.Person` object to remove from the group

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
	public function members():Array<ContactsPerson>;
	public function sortedMembers(sortMethod:Int):Array<ContactsPerson>;
	public function add(person:ContactsPerson):Void;
	public function remove(person:ContactsPerson):Void;
}