package titanium.mobile;

import titanium.mobile.contacts.ContactsGroup;
import titanium.mobile.contacts.ContactsPerson;

/**
App class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Contacts-module

- namespace

Titanium.Contacts

- type

module

- returns

object

- description

The top level Contacts module.  The Contacts module is used accessing the device Address Book.

- since

0.8

- platforms

iphone, ipad

- properties

CONTACTS_KIND_PERSON[int]: constant for 'person' kind property of Person object
CONTACTS_KIND_ORGANIZATION[int]: constant for 'organization' kind property of Person object

CONTACTS_SORT_FIRST_NAME[int]: constant for sorting group members by first name
CONTACTS_SORT_LAST_NAME[int]: constant for sorting group members by last name

- methods

getAllPeople: Returns an array of all `Titanium.Contacts.Person` objects in the contacts database
getPeopleWithName: Returns an array of `Titanium.Contacts.Person` objects who have a name (first, last, middle, composite) which matches the given name
getPersonByID: Returns a `Titanium.Contacts.Person` object with the given ID
showContacts: Displays the contact picker
createPerson: Creates a new `Titanium.Contacts.Person` object.  There must not be any unsaved changes to the database when this function is called
removePerson: Removes a person from the contacts database
getGroupByID: Returns a `Titanium.Contacts.Group` object with the given ID
getAllGroups: Returns an of all `Titanium.Contacts.Group` objects in the contacts database
createGroup: Creates a new `Titanium.Contacts.Group` object.  There must not be any unsaved changes to the database when this function is called
removeGroup: Removes a group from the contacts database
save: Saves all changes to contacts to the database
revert: Reverts all changes made to the previous save of the database

- method : getPeopleWithName, array

name[string]: The name to match in the database

- method : getPersonByID, object

id[int]: The database ID of the person to retrieve

- method : getGroupByID, object

id[int]: The database ID of the group to retrieve

- method : showContacts

cancel[function]: The function to call when selection is cancelled
selectedPerson[function]: The function to call when a person is selected.  Mutually exclusive with `selectedProperty`
selectedProperty[function]: The function to call when a property is selected.  Mutally exclusive with `selectedPerson`
animated[boolean]: Whether or not to animate the show/hide of the contacts picker
fields[array]: A list of field names to show when selecting properties, default is to show all available

- method : removePerson

person[object]: The `Titanium.Contacts.Person` object to remove from the database.

- method : removeGroup

group[object]: The `Titanium.Contacts.Group` object to remove from the database.

~~
~~

- notes

`Titanium.Contacts.Person` objects which have been removed from the database are invalidated after a save operation, whether from creating a new contact or explicitly calling `Titanium.Contacts.save()`.  Using them may result in unpredictable beavhior, including crashes.

**/

@:native("Titanium.Contacts")
extern class Contacts
{
	// static constants
	public static var CONTACTS_KIND_ORGANIZATION:Int;
	public static var CONTACTS_KIND_PERSON:Int;
	public static var CONTACTS_SORT_FIRST_NAME:Int;
	public static var CONTACTS_SORT_LAST_NAME:Int;
	
	// static methods
	public static function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public static function fireEvent(name:String, event:Dynamic):Void;
	public static function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
	
	public static function createGroup(?params:Dynamic):ContactsGroup;
	public static function createPerson(?params:Dynamic):ContactsPerson;
	public static function getAllGroups():Array<ContactsGroup>;
	public static function getAllPeople():Array<ContactsPerson>;
	public static function getGroupByID(id:String):Dynamic;
	public static function getPeopleWithName(name:String):Array<ContactsPerson>;
	public static function getPersonByID(id:String):ContactsPerson;
	public static function removeGroup(group:ContactsGroup):Void;
	public static function removePerson(person:ContactsPerson):Void;
	public static function revert():Void;
	public static function save():Void;
	public static function showContacts(onCancel:Dynamic, onPersonSelect:Dynamic, onPropertySelect:Dynamic, animate:Bool, ?fields:Array<Dynamic>):Void;
}