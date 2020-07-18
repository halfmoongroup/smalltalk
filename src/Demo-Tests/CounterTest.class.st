"
A CounterTest is a test class for testing the behavior of Counter
"
Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'Demo-Tests'
}

{ #category : #tests }
CounterTest >> testCounterIncrements [
	| myCounter retValue | 
	
	myCounter := Counter new.
	myCounter count: 0.
	retValue := myCounter increment.
	self assert: retValue equals: 1.
]
