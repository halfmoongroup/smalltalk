Class {
	#name : #OLAuthor,
	#superclass : #Object,
	#instVars : [
		'authorName',
		'authorKey'
	],
	#category : #OpenLibrary
}

{ #category : #'as yet unclassified' }
OLAuthor class >> publicKeyForAuthor: anAuthor [
|response data  author doc |
	response := ZnClient new url: ('http://openlibrary.org/search.json?author=',anAuthor ); get; response.
	data := NeoJSONReader fromString: response contents asString.
	data isNotNil ifTrue:  [ author:= self new.
					doc := (data at: 'docs') at: 1. 
					author authorName: ((doc at: 'author_name') at: 1);
							   authorKey: ((doc at:'author_key') at: 1 ).]
						ifFalse: [ author := nil ].
	^author
]

{ #category : #accessing }
OLAuthor >> authorKey [
	^ authorKey
]

{ #category : #accessing }
OLAuthor >> authorKey: anObject [
	authorKey := anObject
]

{ #category : #accessing }
OLAuthor >> authorName [
	^ authorName
]

{ #category : #accessing }
OLAuthor >> authorName: anObject [
	authorName := anObject
]
