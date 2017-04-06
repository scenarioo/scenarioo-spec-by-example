Feature: Show currency in users currency
  Customer sees sauce with price and corresponding currency

  Scenario Outline: Prices are displayed in the correct currency
    Given My selected country is '<Country Name>'
    When I see a price
    Then The price has a currency of '<Currency Abbreviation>'

    Examples:
    | Country Name  | Currency Abbreviation |
    | Switzerland   | CHF                   |
    | Germany       | EUR                   |
    | United States | USD                   |
