Class {
	#name : #BookTest,
	#superclass : #TestCase,
	#instVars : [
		'book'
	],
	#category : #'TG-BookLibrary-Tests'
}

{ #category : #'tests - object' }
BookTest class >> bookJson [

^ '{
	"author" : "Name",
	"bookId" : "abcd1234",
	"published" : 2020,
	"publisher" : "aPublisher",
	"title" : "The Book Title"
}'
]

{ #category : #running }
BookTest >> setUp [ 

	book := Book new author: 'Name';
				publisher: 'aPublisher';
				bookId: 'abcd1234';
				title: 'The Book Title';
				originalPublicationYear: 2020.
]

{ #category : #tests }
BookTest >> testCreateJson [
	| jsonStr | 
	
	jsonStr := book toJson.
	self assert: jsonStr notNil.
	self assert: jsonStr equals: (self class bookJson)
]
