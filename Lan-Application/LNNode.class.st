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

{ #category : 'accessing' }
LNNode >> hasNextNode [

	^ nextNode notNil
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
