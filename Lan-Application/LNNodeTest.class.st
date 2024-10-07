Class {
	#name : 'LNNodeTest',
	#superclass : 'TestCase',
	#category : 'Lan-Application',
	#package : 'Lan-Application'
}

{ #category : 'tests' }
LNNodeTest >> testName [

	| node |
node := LNNode new.
node name: #PC1.
self assert: node name equals: #PC1
]
