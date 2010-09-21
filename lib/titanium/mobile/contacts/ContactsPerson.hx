package titanium.mobile.contacts;

/**
Contacts.Person class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.Contacts.Person-object.html
**/

@:native("Titanium.Contacts.Person")
extern class ContactsPerson
{
	// static constructor
	public inline static function create(?params:Dynamic):ContactsPerson
		return titanium.mobile.Contacts.createPerson(params)
		
	// properties
	public var URL:Dynamic;
	public var address:Dynamic;
	public var birthday:String;
	public var created:String;
	public var date:Dynamic;
	public var department:String;
	public var email:Dynamic;
	public var firstName:String;
	public var firstPhonetic:String;
	public var fullName:String;
	public var image:Dynamic;
	public var instantMessage:Dynamic;
	public var jobTitle:String;
	public var kind:Int;
	public var lastName:String;
	public var lastPhonetic:String;
	public var middleName:String;
	public var modified:String;
	public var nickname:String;
	public var note:String;
	public var organization:String;
	public var phone:Dynamic;
	public var prefix:String;
	public var relatedNames:Dynamic;
	public var suffix:String;
}