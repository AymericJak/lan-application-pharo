Class {
	#name : 'LNPacketTest',
	#superclass : 'TestCase',
	#category : 'Lan-Application',
	#package : 'Lan-Application'
}

{ #category : 'tests' }
LNPacketTest >> testInitialized [
| p |
p := LNPacket new.
self assert: p addresseeName equals: '/'.
self assert: p originatorName equals: '/'.
self assert: p contents equals: ''
]
