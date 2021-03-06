"
I am wrapping a literal AST node to be checked by the user.
I hold the data related to categorisation made by the user (e.g. I am a magic literal, I am not, etc...).
"
Class {
	#name : #MLSLiteralCandidate,
	#superclass : #Object,
	#instVars : [
		'astNode',
		'status'
	],
	#category : #MagicLiteralsSelector
}

{ #category : #'instance creation' }
MLSLiteralCandidate class >> astNode: aLiteralASTNode [
	^ self new
		astNode: aLiteralASTNode;
		yourself
]

{ #category : #accessing }
MLSLiteralCandidate >> astNode [
	^ astNode
]

{ #category : #accessing }
MLSLiteralCandidate >> astNode: anObject [
	astNode := anObject
]

{ #category : #'status setting' }
MLSLiteralCandidate >> beCanNotDecide [
	self status: MLSCanNotDecide new
]

{ #category : #'status setting' }
MLSLiteralCandidate >> beMagic [
	self status: MLSIsMagic new
]

{ #category : #'status setting' }
MLSLiteralCandidate >> beNotMagic [
	self status: MLSIsNotMagic new
]

{ #category : #'status setting' }
MLSLiteralCandidate >> beUnknown [
	self status: MLSUnknownStatus new
]

{ #category : #initialization }
MLSLiteralCandidate >> initialize [
	super initialize.
	self beUnknown
]

{ #category : #testing }
MLSLiteralCandidate >> isCanNotDecide [
	^ self status isCanNotDecide
]

{ #category : #testing }
MLSLiteralCandidate >> isMagic [
	^ self status isMagic
]

{ #category : #testing }
MLSLiteralCandidate >> isNotMagic [
	^ self status isNotMagic
]

{ #category : #testing }
MLSLiteralCandidate >> isUnknown [
	^ self status isUnknown
]

{ #category : #accessing }
MLSLiteralCandidate >> literalValue [
	^ self astNode value
]

{ #category : #accessing }
MLSLiteralCandidate >> positionsInterval [
	^ self astNode start to: self astNode stop
]

{ #category : #accessing }
MLSLiteralCandidate >> status [
	^ status
]

{ #category : #accessing }
MLSLiteralCandidate >> status: anObject [
	status := anObject
]
