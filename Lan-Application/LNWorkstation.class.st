"
LNWorkstation inherits from LNNode
Collaborators: Node, Workstation and Packet
Responsibility: (the ones of LNNode)
- send: aPacket - sends a packet.
- accept: aPacket - performs an action on packets sent to the workstation (e.g. printing in the transcript). For the other packets just send them to the following node.
"
Class {
	#name : 'LNWorkstation',
	#superclass : 'LNNode',
	#category : 'Lan-Application',
	#package : 'Lan-Application'
}

{ #category : 'instance creation' }
LNWorkstation >> emit: aLNPacket [
	"This is how LNPackets get inserted into the network.
	This is a likely method to be rewritten to permit
	LNPackets to be entered in various ways."

	| packet |
	packet := aLNPacket originatorName: super name.
	super send: packet
]
