@ZTOPSBE_10 @ZTOPSBE_17 
@currency
Feature: Show shopping cart in different currencies
	In order to now how much money I have to spend
	As a customer
	I want see all the prices of my selected items in my currency

	Todo: 
	 - Can user change currency? When products already selected?
	 - Is it more readable when price and currency are in separated columns?

Scenario Outline: Shopping cart with currency
	Given I select the following products in the catalog:
	| ProductId | ProductName | PricePerItem     | NrOfItems |
	| 123456    | Sauce X     | 10.00 <Currency> | 2         |
	| 654321    | Sauce Y     | 15.00 <Currency> | 3         |
	When I open my shopping cart
	Then the shopping cart shows the following details:
	| ProductId | ProductName | NrOfItems | PricePerPosition |
	| 123456    | Sauce X     | 2         | 20.00 <Currency> |
	| 654321    | Sauce Y     | 3         | 45.00 <Currency> |
	And the shopping cart shows the following totals:
	| TotalNrOfItems | TotalPrice       |
	| 5              | 65.00 <Currency> |

Examples:
| Scenario    | Currency |
| Switzerland | CHF      |
| EU          | EUR      |
| US          | USD      |


