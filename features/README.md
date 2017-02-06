# Features

This part of our documentation documents the hi-level features of our product.

This special Spec-by-Ex-Documentation also contains the BDD tests as gherkin files, that are later to be automated when implemented.

For each feature the documentation is structured as follows:
* features are grouped in hi-level "feature areas"
* there is at least a short markdown description in a README.md for each feature area
* for each feature in a feature area there is at least one Markdown file with a rough description of the feature
* Features can be structured hierarchicaly again (with further sub features) by using a folder with sub features instead of just one markdown file.
* Usually the detailed descriptions of the features in a spec-by-example way are written down in additional test files for each feature (usually at least one or several gherkin feature files).
* The gherkin files might be part of the docs folder itself (here the `features` folder) or might be as well placed in separate test sources folder and simply linking to the feature in the docs folder they belong to.
* More technical tests (like pure Selenium UI tests or unit tests) will be usually just placed in the sources folders and should link as well to the features they are testing (by naming conventions or explicit links): to be defined in project (and as well in the generator transforming this into the generated documentation, including both structures).
* Detailled User Stories will be written in issues tool and should link to the feature(s) they address (with labels, tags or something similar).
* Cross-references between features are possible in usual markdwon cross-reference syntax.
