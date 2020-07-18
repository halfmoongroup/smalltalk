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
	#category : #Demo
}

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
