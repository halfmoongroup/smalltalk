Class {
	#name : #OLBook,
	#superclass : #Object,
	#instVars : [
		'authorName',
		'authorKey',
		'publishDate',
		'title'
	],
	#category : #OpenLibrary
}

{ #category : #'as yet unclassified' }
OLBook class >> populateBooks: anArray [
	
     ^ anArray collect:  [ :item | Book initializeWithDictionary: item withAuthor: 'Mark Twain' ].
	
]

{ #category : #accessing }
OLBook >> authorKey [
	^ authorKey
]

{ #category : #accessing }
OLBook >> authorKey: anObject [
	authorKey := anObject
]

{ #category : #accessing }
OLBook >> authorName [
	^ authorName
]

{ #category : #accessing }
OLBook >> authorName: anObject [
	authorName := anObject
]

{ #category : #accessing }
OLBook >> publishDate [
	^ publishDate
]

{ #category : #accessing }
OLBook >> publishDate: anObject [
	publishDate := anObject
]

{ #category : #accessing }
OLBook >> title [
	^ title
]

{ #category : #accessing }
OLBook >> title: anObject [
	title := anObject
]
