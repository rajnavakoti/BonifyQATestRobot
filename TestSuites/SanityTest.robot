*** Settings ***
Documentation    This file is the collection all the Sanity test cases
...              Teminal command to run the test suite :
...              robot -d OptionalTest <BonfiyQATestRobot folder path>/TestSuites/SanityTest.robot
...              Output screenshots are stored in '/Screenshots/Sanity' folder in the project
...              Log & Reports are generated in '/result' folder in the project

Library  Selenium2Library
Resource    ../Configurations/BrowserConfigurations.robot
Resource    ../Configurations/GeneralConfigurations.robot
Resource    ../ObjectRepository/PageObjects.robot
Resource    ../PageActions/LoginPage.robot
Resource    ../TestData/General.robot
Resource    ../TestData/Sanity.robot

Suite Setup        Set Up - Smoke Suite
Suite Teardown     Tear Down - Smoke Suite



*** Variables ***
&{profile}  ACCEPT_SSL_CERTS=true


*** Test Cases ***
Test Case Verify Login With Valid Credentials
    [Tags]  TC 01    Sanity    Positive

    On LoginPage Enter User Name   ${TC_01_User_Name}
    On LoginPage Enter Password   ${TC_01_Password}
    sleep   1s
    Capture webpage screenshot  Tc_01_Details_Entered   ${Sanity_SS_Path}
    On LoginPage Click On Login Button
    Verify User Navigated To Dashboard Page     ${TC_01_Expected_User_Name_On_Dashboard_Page}
    Capture webpage screenshot  Tc_01_Dashboard_Page   ${Sanity_SS_Path}
    Logout

Test Case Verify Forgot Password Navigation From LoginPage
    [Tags]  TC 02    Sanity    Positive

    Go To   ${Login_Page_URL}
    On LoginPage Click On Forgot Password Link
    Verify User Navigated To Reset Password Page
    Capture webpage screenshot  Tc_02_Reset_Password_Page   ${Sanity_SS_Path}

Test Case Verify Registration Navigation From LoginPage
    [Tags]  TC 03    Sanity    Positive

    Go To   ${URL}
    On LoginPage Click On Registration Button
    Verify User Navigated To Registration Page
    Capture webpage screenshot  Tc_03_Registration_Page   ${Sanity_SS_Path}



Test Case Verify Impressum Navigation From LoginPage
    [Tags]  TC 04    Sanity    Positive

    Go To   ${URL}
    On LoginPage Click On Impressum Link
    Verify User Navigated To Impressum Page
    Capture webpage screenshot  Tc_04_Impressum_Page   ${Sanity_SS_Path}

Test Case Verify AGB Navigation From LoginPage
    [Tags]  TC 05    Sanity    Positive

    Go To   ${URL}
    On LoginPage Click On AGB Link
    Verify User Navigated To AGB Page
    Capture webpage screenshot  Tc_05_AGB_Page   ${Sanity_SS_Path}

Test Case Verify Datenschutz Navigation From LoginPage
    [Tags]  TC 06    Sanity    Positive

    Go To   ${URL}
    On LoginPage Click On Datenschutz Link
    Verify User Navigated To Datenschutz Page
    Capture webpage screenshot  Tc_06_Datenschutz_Page   ${Sanity_SS_Path}

*** Keywords ***
Set Up - Smoke Suite
    Open Browser    ${URL}   ${Browser}
    Maximize Browser Window

Tear Down - Smoke Suite
    Close Browser