@ZTOPSBE_10 @ZTOPSBE_18
Feature: Proceed to checkout process
	In order to order my selected products
	As a customer
	I want to proceed and move to the checkout process

Scenario: At least one product is selected
	Given I select the following products in the catalog:
	| ProductId | ProductName | PricePerItem | NrOfItems |
	| 123456    | Sauce X     | 9.99 CHF     | 1         |
	When I open my shopping cart
	Then the checkout function is available

Scenario: No product has been selected
	Given No product has been selected
	When I open my shopping cart
	Then the checkout function not available

Scenario: Proceed to checkout process
	Given the shopping cart shows the following details:
	| ProductId | ProductName | NrOfItems | PricePerPosition |
	| 123456    | Sauce X     | 2         | 19.98 CHF        |
	When select the checkout function
	Then the checkout page is shown


