Feature: View and browse sauce
  Customer navigates the sauce catalogue and views sauce details to order sauces.

  Scenario Outline: All sauces are displayed in sauce catalog

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