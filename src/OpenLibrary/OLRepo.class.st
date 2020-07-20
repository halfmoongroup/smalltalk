Class {
	#name : #OLRepo,
	#superclass : #Object,
	#instVars : [
		'authors',
		'books'
	],
	#category : #OpenLibrary
}

{ #category : #accessing }
OLRepo >> authors [
	^ authors
]

{ #category : #accessing }
OLRepo >> authors: anObject [
	authors := anObject
]

{ #category : #accessing }
OLRepo >> books [
	^ books
]

{ #category : #accessing }
OLRepo >> books: anObject [
	books := anObject
]

{ #category : #initialization }
OLRepo >> initialize [ 

	self authors: OrderedCollection new. 
	self books: OrderedCollection new. 
]
