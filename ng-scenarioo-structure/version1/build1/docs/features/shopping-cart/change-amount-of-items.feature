@ZTOPSBE_10 @ZTOPSBE_19
Feature: Change amount of items
	In order to change my order
	As a customer
	I want to be able to correct the amount of a selected product

	Todo:
		- Cases with +/- buttons?

Scenario: Increase the number of the first product
	Given the shopping cart shows the following details:
	| ProductId | ProductName | NrOfItems | PricePerPosition |
	| 123456    | Sauce X     | 2         | 10.00 CHF        |
	| 654321    | Sauce Y     | 3         | 15.00 CHF        |
	When I change number of items of "Sauce X" to 4
	Then the shopping cart shows the following details:
	| ProductId | ProductName | NrOfItems | PricePerPosition |
	| 123456    | Sauce X     | 4         | 40.00 CHF        |
	| 654321    | Sauce Y     | 3         | 45.00 CHF        |
	And the shopping cart shows the following totals:
	| TotalNrOfItems | TotalPrice |
	| 7              | 85.00 CHF  |

Scenario: Decrease the number of the second product
	Given the shopping cart shows the following details:
	| ProductId | ProductName | NrOfItems | PricePerPosition |
	| 123456    | Sauce X     | 2         | 10.00 CHF        |
	| 654321    | Sauce Y     | 3         | 15.00 CHF        |
	When I change number of items of "Sauce Y" to 1
	Then the shopping cart shows the following details:
	| ProductId | ProductName | NrOfItems | PricePerPosition |
	| 123456    | Sauce X     | 2         | 20.00 CHF        |
	| 654321    | Sauce Y     | 1         | 15.00 CHF        |
	And the shopping cart shows the following totals:
	| TotalNrOfItems | TotalPrice |
	| 3              | 35.00 CHF  |


