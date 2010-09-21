package titanium.mobile.core;

typedef Event =
{
	type:String,
	source:Dynamic
}

extern class Dispatcher 
{
	// methods
	public function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public function fireEvent(name:String, event:Dynamic):Void;
	public function removeEventListener(name:String, eventListener:Dynamic->Void):Void;
}