*** Settings ***
Documentation    This fil will have all the necessary user test data necessary for 'Regression' Testing
...              Any Test suite can have only one kind (Somke or Sanity or Regression) of test data
...              Importing of multiple kinds of test data in to same suite may result in failure due to duplicate variable names

*** Variables ***
# TC 01 Verify Login With Valid Credentials
${TC_01_User_Name}                                      rajaprabhas455@gmail.com
${TC_01_Password}                                       Prabhas@5
${TC_01_Expected_User_Name_On_Dashboard_Page}           Rajashekar Navakoti

# TC 02 Verify Login Without Username
${TC_02_User_Name}

# TC 03 Verify Login With Incorrect Username
${TC_03_User_Name}                                      rajaprabhas@gmail.com
${TC_03_Password}                                       Prabhas@5

# TC 04 Verify Login With Invalid Email Format
${TC_04_User_Name}                                      rajaprabhasgmail.com
${TC_04_Password}                                       Prabhas@5

# TC 05 Verify Login Without Password
${TC_05_User_Name}                                      rajaprabhas@gmail.com

# TC 06 Verify Login Incorrect Password
${TC_06_User_Name}                                      rajaprabhas455@gmail.com
${TC_06_Password}                                       Prabhas5

# TC 07 Verify Login Without Username Password


