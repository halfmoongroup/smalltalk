"
A simple conter for my demonstration
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #Demo
}

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: anObject [
	count := anObject
]

{ #category : #counting }
Counter >> increment [
	^ count := count + 1.
]
