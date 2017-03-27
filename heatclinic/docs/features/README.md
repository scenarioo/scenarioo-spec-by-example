# Heat Clinic Features

This part of the documentation contains detailed description for all the features of the application.

The descriptions are mostly compiled from automated test cases of different level (e2e-tests, logic-tests, both in BDD-style or simple unit test style) and therefore also contain info on their state.

Following states would probably make sense on each level of the feature tree:
 * broken = regression tests that once supposed to be implemented are failing in this feature area
 * planned = nothing implemented yet, tests are all pending
 * partially implemented = no tests failing, some tests pending (=changes planned)
 * implemented = everything is implemented, no test failing, none pending

There is also a glosary, and all important domain terms used in this documentation should be explained shortly there, to get a glosary with even an index about this terms and where they occur. Here is a simple example using the term Shopping Cart or its synonym Basket.

## Functional Features

There are following major feature areas into which our features belong:

Feature | Description
:---|:---
[Browse Sauces](browse-sauces/README.md) | Browsing the catalogue of our sauces
[Shopping Cart](shopping-cart/README.md) | Put items into Shopping Cart and modify contents before checkout
[Order Checkout and Payment](order-checkout/README.md) | Finalize a order with order checkout and payment
[User Profile](user-profile/README.md) | Logedin Users can manage their user profiles to adjust their contact informations
[Sauce Catalogue Management](sauce-catalogue-maangement/README.md) | Managing the products in our sauce catalogue


Features in the different areas may have references on features in other areas, which means that the features are not strictly ordered as a tree (one feature can have more than one parent).

## Architecture & Non-Functional Requirements

Architecture, sub systems and non functional requirements are described in the special technical feature area [Architecture](../architecture/README.md)
