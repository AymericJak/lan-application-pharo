"
LNNode inherits from Object
Collaborators: LNNode and LNPacket
Responsibility:
- name (aSymbol) - returns the name of the current node.
- hasNextNode - tells if the receiver has a next node.
- accept: aPacket - receives a Packet and processes it. By
default, it is sent to the next node.
- send: aPacket - sends a Packet to its next node.
"
Class {
	#name : 'LNNode',
	#superclass : 'Object',
	#instVars : [
		'name',
		'nextNode'
	],
	#category : 'Lan-Application',
	#package : 'Lan-Application'
}

{ #category : 'visiting' }
LNNode >> accept: aPacket [
	"Having received aPacket, send it on. This is the default behavior. My subclasses may override me to do something special."

	self send: aPacket
]

{ #category : 'accessing' }
LNNode >> hasNextNode [

	^ nextNode notNil
]

{ #category : 'accessing' }
LNNode >> initialize [

	super initialize.
	name := 'unamed'
]

{ #category : 'accessing' }
LNNode >> name [
	^ name
]

{ #category : 'accessing' }
LNNode >> name: aSymbol [

	name := aSymbol
]

{ #category : 'accessing' }
LNNode >> nextNode [

	^ nextNode
]

{ #category : 'accessing' }
LNNode >> nextNode: aLNNode [

	nextNode := aLNNode
]

{ #category : 'accessing' }
LNNode >> printOn: aStream [

	aStream nextPutAll: self name.
	aStream nextPutAll: ' -> '.
	nextNode
		ifNil: [ aStream nextPutAll: '/' ]
		ifNotNil: [ aStream nextPutAll: nextNode name ]
]

{ #category : 'visiting' }
LNNode >> send: aPacket [
nextNode ifNotNil: [
self name trace.
' sends a packet to: ' trace.
nextNode name traceCr.
nextNode accept: aPacket ]
]
