"
A CounterTest is a test class for testing the behavior of Counter
"
Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'Demo-Counter-Tests'
}

{ #category : #tests }
CounterTest >> testCounterIncrements [
	| myCounter retValue | 
	
	myCounter := Counter new.
	retValue := myCounter increment.
	self assert: retValue equals: 1.
]
