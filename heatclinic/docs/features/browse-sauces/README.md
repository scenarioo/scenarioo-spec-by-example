
# Browse sauces
## Features
### [View and browse sauces](view-and-browse-sauces)
```gherkin
Feature: View and browse sauce
  Customer navigates the sauce catalogue and views sauce details to order sauces.

  Scenario Outline: Assert that all sauces are displayed in sauce catalog
	Given All sauces are in the system

	When I navigate to the main page

	Then I can see the following sauce:
	| Property    | Value         |
	| Name        | <Name>        |
	| Description | <Description> |
	| Picture     | <Picture>     |
	| Price       | <Price>       |

	Examples:
	  | Name                                         | Description                             | Picture  | Price  |
	  | Sudden Death Sauce                           | As my Chilipals know, I am never one... | pic1.jpg | $10.99 |
	  | Sweet Death Sauce                            | The perfect topper for chicken...       | pic2.jpg | $10.99 |
	  | Green Ghost                                  | Made with Naga Bhut Jolokia...          | pic3.jpg | $9.99  |
	  | Blazin' Saddle XXX Hot Habanero Pepper Sauce | You bet your boots, this hot sauce ...  | pic4.jpg | $4.99  |
```


### [View details for sauce](view-details-for-sauce.feature)
```gherkin
@Heinrich @Joanna
@Future
Feature: View details for sauce

Scenario: View details for sauce
Given All sauces are in the system
When  I navigate to the main page
And I select the first sauce
Then I see the following details for the sauce:
| Property    | Value                                   |
| Name        | Sudden Death Sauce                      |
| Description | As my Chilipals know, I am never one... |
| Picture     | pic1.jpg                                |
| Price       | $10.99                                  |

```


### [Show currency in users currency](show-currency-in-users-currency.feature)
```gherkin
Feature: Show currency in users currency
  Customer sees sauce with price and corresponding currency

  Scenario Outline: Assert that prices are displayed in the correct currency
    Given My selected country is '<Country Name>'
    When I see a price
    Then The price has a currency of '<Currency Abbreviation>'

    Examples:
    | Country Name  | Currency Abbreviation |
    | Switzerland   | CHF                   |
    | Germany       | EUR                   |
    | United States | USD                   |

```


### [View special offers](view-special-offers.feature)
```gherkin
@Heinrich @Joanna
@Future
Feature: View special offers

Scenario: View special offers

Given All sauces are in the system
When  I navigate to the main page
Then I see the following special offers:

```



  