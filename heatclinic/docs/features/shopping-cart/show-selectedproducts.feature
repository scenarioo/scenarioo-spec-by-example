@ZTOPSBE_10 @ZTOPSBE_16
Feature: Show selected products
	In order to verify my selection before I process the order
	As a customer
	I want see all my selected items and correct prices

	Todo: 
	 - What happens when a sauce is out of stock?
	 - NrOfItems max? Overflow?
	 - Round prices?
	 - Can a price be 0? Or negative?
	 - Is total price shown when no item is selected?
	 - Would it be useful to have separate example with roundings?

Scenario: Shopping cart with selected products
	Given I select the following products in the catalog:
	| ProductId | ProductName | PricePerItem | NrOfItems |
	| 123456    | Sauce X     | 9.99 CHF     | 2         |
	| 654321    | Sauce Y     | 14.98 CHF    | 3         |
	When I open my shopping cart
	Then the shopping cart shows the following details:
	| ProductId | ProductName | NrOfItems | PricePerPosition |
	| 123456    | Sauce X     | 2         | 19.98 CHF        |
	| 654321    | Sauce Y     | 3         | 44.94 CHF        |
	And the shopping cart shows the following totals:
	| TotalNrOfItems | TotalPrice |
	| 5              | 64.92 CHF  |

Scenario: Empty shopping cart
	Given No product has been selected
	When I open my shopping cart
	Then the shopping cart details is empty
	And the shopping cart shows the following totals:
	| TotalNrOfItems | TotalPrice |
	| 0              | 0.00 CHF   |

