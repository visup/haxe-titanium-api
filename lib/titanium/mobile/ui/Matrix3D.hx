package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;

/**
Matrix3D class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Matrix3D-object.html
**/

@:native("Titanium.UI.Matrix3D")
extern class Matrix3D extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):Matrix3D
		return titanium.mobile.UI.createMatrix3D(params)
		
	// properties
	public var m11:Float;
	public var m12:Float;
	public var m13:Float;
	public var m14:Float;
	public var m21:Float;
	public var m22:Float;
	public var m23:Float;
	public var m24:Float;
	public var m31:Float;
	public var m32:Float;
	public var m33:Float;
	public var m34:Float;
	public var m41:Float;
	public var m42:Float;
	public var m43:Float;
	public var m44:Float;
	
	// methods
	public function invert():Matrix3D;
	public function multiply(t2:Matrix3D):Matrix3D;
	public function rotate(angle:Float, x:Float, y:Float, z:Float):Matrix3D;
	public function scale(sx:Float, sy:Float, sz:Float):Matrix3D;
	public function translate(tx:Float, ty:Float, tz:Float):Matrix3D;
}