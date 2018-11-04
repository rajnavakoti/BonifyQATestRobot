*** Settings ***
Documentation    This file is the collection all the Regression test cases
...              Teminal command to run the test suite :
...              robot -d OptionalTest <BonfiyQATestRobot folder path>/TestSuites/RegressionTest.robot
...              Output screenshots are stored in '/Screenshots/Regression' folder in the project
...              Log & Reports are generated in '/result' folder in the project

Library  Selenium2Library
Resource    ../Configurations/BrowserConfigurations.robot
Resource    ../Configurations/GeneralConfigurations.robot
Resource    ../ObjectRepository/PageObjects.robot
Resource    ../PageActions/LoginPage.robot
Resource    ../TestData/General.robot
Resource    ../TestData/Regression.robot

Suite Setup        Set Up - Smoke Suite
Suite Teardown     Tear Down - Smoke Suite

*** Test Cases ***
TC 01 Verify Login With Valid Credentials
    [Tags]    TC 01     Regression    Positive

    On LoginPage Enter User Name  ${TC_01_User_Name}
    On LoginPage Enter Password  ${TC_01_Password}
    Capture webpage screenshot  Tc_01_Details_Entered   ${Regression_SS_Path}
    On LoginPage Click On Login Button
    Verify User Navigated To Dashboard Page     ${TC_01_Expected_User_Name_On_Dashboard_Page}
    Capture webpage screenshot  Tc_01_Dashboard_Page   ${Regression_SS_Path}
    Logout

TC 02 Verify Login Without Username
    [Tags]    TC 02     Regression    Negative

    Go To   ${URL}
    On LoginPage Enter User Name  ${TC_02_User_Name}
    On LoginPage Click On Login Button
    Verify User Name Mandatory message is displayed to the user
    Capture webpage screenshot  Tc_02_User_Name_Error_Message   ${Regression_SS_Path}

TC 03 Verify Login With Incorrect Username
    [Tags]    TC 03     Regression    Negative

    Go To   ${URL}
    On LoginPage Enter User Name   ${TC_03_User_Name}
    On LoginPage Enter Password  ${TC_03_Password}
    On LoginPage Click On Login Button
    Verify Login error message is displayed to the user
    Capture webpage screenshot  Tc_03_User_Name_Error_Message   ${Regression_SS_Path}

TC 04 Verify Login With Invalid Email Format
    [Tags]    TC 04     Regression    Negative

    Go To   ${URL}
    On LoginPage Enter User Name   ${TC_04_User_Name}
    On LoginPage Enter Password  ${TC_04_Password}
    Verify Invalid User Name message is displayed to the user
    Capture webpage screenshot  Tc_04_User_Name_Error_Message   ${Regression_SS_Path}

TC 05 Verify Login Without Password
    [Tags]    TC 05     Regression    Negative

    Go To   ${URL}
    On LoginPage Enter User Name   ${TC_05_User_Name}
    On LoginPage Click On Login Button
    Verify Password Mandatory message is displayed to the user
    Capture webpage screenshot  Tc_05_Password_Error_Message   ${Regression_SS_Path}

TC 06 Verify Login Incorrect Password
    [Tags]    TC 06     Regression    Negative

    Go To   ${URL}
    On LoginPage Enter User Name   ${TC_06_User_Name}
    On LoginPage Enter Password   ${TC_06_Password}
    On LoginPage Click On Login Button
    Capture webpage screenshot  Tc_06_Password_Error_Message   ${Regression_SS_Path}

TC 07 Verify Login Without Username Password
    [Tags]    TC 07     Regression    Negative

    Go To   ${URL}
    On LoginPage Click On Login Button
    Verify User Name Mandatory message is displayed to the user
    Verify Password Mandatory message is displayed to the user
    Capture webpage screenshot  Tc_07_Login_Error_Message   ${Regression_SS_Path}

*** Keywords ***
Set Up - Smoke Suite
    Open Browser    ${URL}   ${Browser}
    Maximize Browser Window

Tear Down - Smoke Suite
    Close Browser