*** Settings ***
Documentation    This fil will have all the necessary user test data necessary for 'Smoke' Testing
...              Any Test suite can have only one kind (Somke or Sanity or Regression) of test data
...              Importing of multiple kinds of test data in to same suite may result in failure due to duplicate variable names



*** Keywords ***
Provided precondition
    Setup system under test