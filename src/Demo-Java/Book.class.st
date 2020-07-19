"
My basic book
"
Class {
	#name : #Book,
	#superclass : #Object,
	#instVars : [
		'title',
		'author',
		'yearPublished',
		'condition'
	],
	#category : #'Demo-Java'
}

{ #category : #initialization }
Book class >> initializeWithDictionary: aDict withAuthor: anAuthor [
	| newBook |
	newBook := self  new. 
	newBook author: anAuthor; title: (aDict at:'full_title' ); yearPublished: (aDict at: 'publish_date').
	^newBook
	
]

{ #category : #accessing }
Book >> author [
	^ author
]

{ #category : #accessing }
Book >> author: anObject [
	author := anObject
]

{ #category : #accessing }
Book >> condition [
	^ condition
]

{ #category : #accessing }
Book >> condition: anObject [
	condition := anObject
]

{ #category : #initialization }
Book >> initialize [ 

	self author: ''; 
		condition: 'new'; 
		title: ''; 
		yearPublished: 1900.
]

{ #category : #accessing }
Book >> title [
	^ title
]

{ #category : #accessing }
Book >> title: anObject [
	title := anObject
]

{ #category : #accessing }
Book >> yearPublished [
	^ yearPublished
]

{ #category : #accessing }
Book >> yearPublished: anObject [
	yearPublished := anObject
]
