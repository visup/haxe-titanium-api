package titanium.mobile.ui;
import titanium.mobile.core.Dispatcher;

/**
Matrix2D class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/latest/Titanium.UI.Matrix2D-object.html
**/

@:native("Titanium.UI.Matrix2D")
extern class Matrix2D extends Dispatcher
{
	// static constructor
	public inline static function create(?params:Dynamic):Matrix2D
		return titanium.mobile.UI.createMatrix2D(params)
	
	// properties
	public var a:Float;
	public var b:Float;
	public var c:Float;
	public var d:Float;
	public var tx:Float;
	public var ty:Float;
	
	// methods
	public function invert():Matrix2D;
	public function multiply(t2:Matrix2D):Matrix2D;
	public function rotate(angle:Float):Matrix2D;
	public function scale(sx:Float, sy:Float):Matrix2D;
	public function translate(tx:Float, ty:Float):Matrix2D;
}