package titanium.mobile.network;

import titanium.mobile.core.Dispatcher;
import titanium.mobile.core.Buffer;
import titanium.mobile.IOStream;
import titanium.mobile.network.socket.TCP;

/**
Socket class

Documentation available at:
http://developer.appcelerator.com/apidoc/mobile/1.7.0.RC1/Titanium.Network.Socket-module

- namespace

Titanium.Network.Socket

- type

module

- description

Socket module

- since

1.7

- platforms

iphone, android, ipad

- properties

INITIALIZED[Number]: state representing the initialized state of a socket
CONNECTED[Number]: state representing the connected state of a socket
LISTENING[Number]: state representing the listening state of a socket
CLOSED[Number]: state representing the closed state of a socket
ERROR[Number]: state representing the error state of a socket

- methods

createTCP: returns new TCP socket object, takes object containing properties list defined in `Titanium.Network.Socket.TCP`.  Some properties are only needed based on whether the socket will be a connecting socket or a listening socket.

- method : createTCP, `Titanium.Network.Socket.TCP`
params[Object]: creation parameters

**/


@:native("Titanium.Network.Socket")
extern class Socket extends Dispatcher, implements IOStream
{
	// static methods
	public static function createTCP(params:Dynamic):TCP;
	
	// implemented methods
	public function read( buffer:Buffer, ?offset:Int, ?length:Int ):Int;
	public function write( buffer:Buffer, ?offset:Int, ?length:Int ):Int;
	public function isWriteable():Bool;
	public function isReadable():Bool;
	public function close():Void;	
}