*** Settings ***
Documentation    This Test suite file is having Test case to test the 'optional' question 3 of Bonify QA test
...              Test case will test present screen data/result as per the test data entered in the previous screen
...              Teminal command to run the test suite :
...              robot -d OptionalTest <BonfiyQATestRobot folder path>/TestSuites/OptionalTest.robot

Library  Selenium2Library
Resource    ../Configurations/BrowserConfigurations.robot
Resource    ../Configurations/GeneralConfigurations.robot
Resource    ../ObjectRepository/PageObjects.robot
Resource    ../PageActions/LoginPage.robot
Resource    ../PageActions/ResetPasswordPage.robot
Resource    ../TestData/General.robot
Resource    ../TestData/Sanity.robot

Suite Setup        Set Up - Smoke Suite
Suite Teardown     Tear Down - Smoke Suite



*** Variables ***
&{profile}  ACCEPT_SSL_CERTS=true
${Valid_User_Name}  rajaprabhas455@gmail.com


*** Test Cases ***
Test Case Verify when user enters valid email id on reset password screen he receives success message on next screen
    [Tags]  TC 01    Optional    Data validation on next screen

    On LoginPage Click On Forgot Password Link
    Verify User Navigated To Reset Password Page
    On ResetPasswordPage Enter User Name    ${Valid_User_Name}
    On ResetPasswordPage Click On Submit Button
    Verify User Navigated To CheckEmail Page
    Verify success message received on CheckEmail Page

*** Keywords ***
Set Up - Smoke Suite
    Open Browser    ${URL}   ${Browser}
    Maximize Browser Window

Tear Down - Smoke Suite
    Close Browser