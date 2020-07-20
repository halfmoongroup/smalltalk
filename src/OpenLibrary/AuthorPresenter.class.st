Class {
	#name : #AuthorPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'authors',
		'repo'
	],
	#category : #OpenLibrary
}

{ #category : #initialization }
AuthorPresenter class >> defaultLayout [

	^SpBoxLayout newVertical 
			add: #authors;
			yourself
]

{ #category : #accessing }
AuthorPresenter >> authors [
	^ authors
]

{ #category : #accessing }
AuthorPresenter >> authors: anObject [
	authors := anObject
]

{ #category : #initialization }
AuthorPresenter >> initialize [ 

	repo := OLRepo new. 
]

{ #category : #initialization }
AuthorPresenter >> initializePresenters [ 

	authors := self newTable
			addColumn: (SpStringTableColumn title: 'name' evaluated: #name);
			addColumn: (SpStringTableColumn title: 'id' evaluated: #id);
			yourself.
	self updatePresenter 
]

{ #category : #accessing }
AuthorPresenter >> repo [
	^ repo
]

{ #category : #accessing }
AuthorPresenter >> repo: anObject [
	repo := anObject
]

{ #category : #initialization }
AuthorPresenter >> updatePresenter [
	authors items: (self repo authors)
]
