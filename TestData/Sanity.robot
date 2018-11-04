*** Settings ***
Documentation    This fil will have all the necessary user test data necessary for 'Sanity' Testing
...              Any Test suite can have only one kind (Somke or Sanity or Regression) of test data
...              Importing of multiple kinds of test data in to same suite may result in failure due to duplicate variable names

*** Variables ***

# TC_01 Test Case Verify Login With Valid Credentials
${TC_01_User_Name}                                      rajaprabhas455@gmail.com
${TC_01_Password}                                       Prabhas@5
${TC_01_Expected_User_Name_On_Dashboard_Page}           Rajashekar Navakoti

