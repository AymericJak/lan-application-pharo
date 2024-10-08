"
LNPrinter inherits from LNNode
Collaborators: LNNode and LNPacket
Responsibility:
- accept: aLNPacket - if the packet is addressed to the printer, prints the packet contents else sends the packet to the following node.
- print: aLNPacket - prints the contents of the packet (into the Transcript for example).
"
Class {
	#name : 'LNPrinter',
	#superclass : 'LNNode',
	#category : 'Lan-Application-Models',
	#package : 'Lan-Application',
	#tag : 'Models'
}

{ #category : 'visiting' }
LNPrinter >> accept: aLNPacket [

	aLNPacket addresseeName = self name
		ifTrue: [ self print: aLNPacket ]
		ifFalse: [ super accept: aLNPacket ]
]

{ #category : 'visiting' }
LNPrinter >> print: aLNPacket [

	Transcript show: aLNPacket contents
]
