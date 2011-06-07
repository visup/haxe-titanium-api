package titanium.mobile.core;

import titanium.mobile.IOStream;

/**
BufferStream class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/1.7.0.RC1/Titanium.BufferStream-object

- namespace

Titanium.BufferStream

- type

proxy

- description

Wrapper around `Titanium.Buffer` that implements the `Titanium.IOStream` interface

- since

1.7

- platforms

iphone, android, ipad

- methods

read: reads data from stream into a buffer.  Optional offset and length arguments to specify position in buffer in whichto start writing the read data, and the amount of data to read.
write: writes data from buffer to stream. Optional offset and length arguments to specify position in buffer in which to start reading data that is written to the stream, and the length of the data to take from the buffer.
isWriteable: reads true if stream is writeable, false otherwise
isReadable: reads true if stream is readable, false otherwise
close: closes stream and throws exception on error

- method : read, Number
buffer[`Titanium.Buffer`]: buffer to read stream data into
offset[Number]: (Optional) offset to start reading buffer data from
length[Number]: (Optional) length of data to read from buffer

- method : write, Number
buffer[`Titanium.Buffer`]: buffer to write to stream
offset[Number]: (Optional) offset to start writing buffer data from
length[Number]: (Optional) length of data to write from buffer

- method : isWriteable, Boolean

- method : isReadable, Boolean

- method : close


**/
@:native("Titanium.BufferStream")
extern class BufferStream extends Buffer, implements IOStream
{
	
	public function addEventListener(name:String, eventListener:Dynamic->Void):Void;
	public function fireEvent(name:String, event:Dynamic):Void;
	public function removeEventListener(name:String, eventListener:Dynamic->Void):Void;

	public function read( buffer:Buffer, ?offset:Int, ?length:Int ):Int;
	public function write( buffer:Buffer, ?offset:Int, ?length:Int ):Int;
	public function isWriteable():Bool;
	public function isReadable():Bool;
	public function close():Void;
}