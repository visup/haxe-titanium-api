package titanium.mobile;

import titanium.mobile.contacts.ContactsGroup;
import titanium.mobile.contacts.ContactsPerson;

/**
App class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Contacts-module
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