Assignment: More Data
================

Now that have:

-   given structure to your project using *drake* or *ProjectTemplate*
-   built a "naive" model and,
-   a Rmd document for measuring your model
-   An list of assets you need
-   Several model(s) that you have created

You should be in the meat of your project and cycling time

READING
-------

Model Building:

-   [The Caret Homepage](http://topepo.github.io/caret/index.html)

There is a lot of good stuff in the *caret* package probably too much and you may wish to go back and do your previous models using *caret*.

Package Development:

-   [devtools](https://github.com/r-lib/devtools)
-   [r-pkgs](http://r-pkgs.had.co.nz/)

Testing:

-   [testthat](http://testthat.r-lib.org/)
-   [testing](http://r-pkgs.had.co.nz/tests.html)

Assignment
----------

-   Begin consolidating your work into **your** fork of <https://github.com/csx415/project>. Please name it ""csx415-project".

-   Train a more advanced model such as one using boosting or bagging: popular models here are Neural Networks, RandomForest, SVM, Gradient Boosted Trees, etc.

-   Compare that model to previous models. Was there a performance gain?
-   Create a R pkg for containing your model(s)
-   Create the package in the `pkgs/` directory
-   Add the model to the packages (hint: it counts as "data")
-   Document:
    -   the package
    -   the model
-   Use the *testthat* package to create a small test for the model to ensure that it works
-   Copy a knitted model performance report into the package. For ease, place it in the `inst/` directory.
-   Build your packages and place the built package in the `pkgs/` directory.

### Notes:

-   Work in your teams
-   Ensure everyone on the team submits the work to their own repository
-   Ensure that the files you create adhere to your framework.
-   All files go into their appropriate place within your framework.

Background
----------

An R package provides a perfect container for managing a model. Having the extra step of putting the model and its performance in a packages ensures that you are keeping a history of the model.
