*** Settings ***
Documentation    This file is the collection all the Smoke test cases
...              Teminal command to run the test suite :
...              robot -d OptionalTest <BonfiyQATestRobot folder path>/TestSuites/SmokeTest.robot
...              Output screenshots are stored in '/Screenshots/Smoke' folder in the project
...              Log & Reports are generated in '/result' folder in the project

Library  Selenium2Library
Resource    ../Configurations/BrowserConfigurations.robot
Resource    ../Configurations/GeneralConfigurations.robot
Resource    ../ObjectRepository/PageObjects.robot
Resource    ../TestData/General.robot
Resource    ../TestData/Smoke.robot

Suite Setup        Set Up - Smoke Suite
Suite Teardown     Tear Down - Smoke Suite

*** Variables ***

*** Test Cases ***
Test Case Verify Page Titile
    [Tags]    TC 01     Smoke     UI

    ${Actual_Page_Title}    Get Title
    Should be equal    ${Expected_Page_Title}  ${Actual_Page_Title}
    Capture webpage screenshot  TC_01_Page_Title    ${Smoke_SS_Path}

Test Case Verify Header Text
    [Tags]    TC 02     Smoke     UI

    Element should be visible   ${Header_Text}
    ${Actual_Header_Text}   Get Text    ${Header_Text}
    Should be equal    ${Expected_Header_Text}  ${Actual_Header_Text}
    Focus on element and take screenshot    ${Header_Text}   TC_02_Header_Text   ${Smoke_SS_Path}

Test Case Verify User Name Field
    [Tags]    TC 03     Smoke     UI

    Element should be visible    ${User_name_Text_Box}
    Element should be enabled    ${User_name_Text_Box}

    Element should be visible   ${Username_default_Text}
    ${Actual_User_Name_Default_Text}   Get Text    ${Username_default_Text}
    Should be equal    ${Expected_User_Name_Default_Text}   ${Actual_User_Name_Default_Text}
    Focus on element and take screenshot    ${User_name_Text_Box}    TC_03_UserName_Text_Box   ${Smoke_SS_Path}

Test Case Verify Password Field
    [Tags]    TC 04     Smoke     UI

    Element should be visible    ${Password_Text_Box}
    Element should be enabled    ${Password_Text_Box}

    Element should be visible   ${Password_label}
    ${Actual_Password_Default_Text}   Get Text    ${Password_label}
    Should be equal    ${Expected_Password_Default_Text}   ${Actual_Password_Default_Text}
    Focus on element and take screenshot   ${Password_label}      TC_04_Pasword_Text_Box   ${Smoke_SS_Path}

Test Case Verify Forgot Password Link
    [Tags]    TC 05     Smoke     UI

    Element should be visible    ${Forgot_Password_link}
    Element should be enabled    ${Forgot_Password_link}

    ${Actual_forgot_password_link_Text}   Get Text    ${Forgot_Password_link}
    Should be equal    ${Expected_forgot_password_link_Text}   ${Actual_forgot_password_link_Text}
    Focus on element and take screenshot   ${Forgot_Password_link}    TC_05_ForgotPassword_Link   ${Smoke_SS_Path}

Test Case Verify Login Button
    [Tags]    TC 06     Smoke     UI

    Element should be visible    ${Login_Button}
    Element should be enabled    ${Login_Button}

    ${Actual_Login_Button_Text}   Get Text    ${Login_Button}
    Should be equal    ${Expected_Login_Button_Text}   ${Actual_Login_Button_Text}
    Focus on element and take screenshot   ${Login_Button}   TC_06_Login_Button   ${Smoke_SS_Path}

Test Case Verify Register Button
    [Tags]    TC 07     Smoke     UI

    Element should be visible    ${Register_Button}
    Element should be enabled    ${Register_Button}

    ${Actual_Register_Button_Text}   Get Text    ${Register_Button}
    Should be equal    ${Expected_Register_Button_Text}    ${Actual_Register_Button_Text}
    Focus on element and take screenshot   ${Register_Button}   TC_07_Register_Button   ${Smoke_SS_Path}

Test Case Verify impressum Link
    [Tags]    TC 08     Smoke     UI

    Element should be visible    ${Impressum_Link}
    Element should be enabled    ${Impressum_Link}

    ${Actual_Impressum_link_Text}   Get Text    ${Impressum_Link}
    Should be equal    ${Expected_Impressum_link_Text}    ${Actual_Impressum_link_Text}
    Focus on element and take screenshot   ${Impressum_Link}   TC_08_Impressum_Link   ${Smoke_SS_Path}

Test Case Verify AGB Link
    [Tags]    TC 09     Smoke     UI

    Element should be visible    ${AGB_Link}
    Element should be enabled    ${AGB_Link}

    ${Actual_AGB_link_Text}   Get Text    ${AGB_Link}
    Should be equal    ${Expected_AGB_link_Text}    ${Actual_AGB_link_Text}
    Focus on element and take screenshot   ${AGB_Link}   TC_09_AGB_link   ${Smoke_SS_Path}

Test Case Verify Datenschutz Link
    [Tags]    TC 10     Smoke     UI

    Element should be visible    ${Datenschutz_Link}
    Element should be enabled    ${Datenschutz_Link}

    ${Actual_Datenschutz_link_Text}   Get Text    ${Datenschutz_Link}
    Should be equal    ${Expected_Datenschutz_link_Text}    ${Actual_Datenschutz_link_Text}
    Focus on element and take screenshot   ${Datenschutz_Link}   TC_10_Datenschutz_link   ${Smoke_SS_Path}

Test Case Verify Footer Text
    [Tags]    TC 11     Smoke     UI

    Element should be visible    ${Footer_Text}

    ${Actual_Footer_Text}   Get Text    ${Footer_Text}
    Should be equal    ${Expected_Footer_Text}    ${Actual_Footer_Text}
    Focus on element and take screenshot   ${Footer_Text}   TC_11_Footer_Text   ${Smoke_SS_Path}

*** Keywords ***
Set Up - Smoke Suite
    Open Browser    ${URL}   ${Browser}
    Maximize Browser Window

Tear Down - Smoke Suite
    Close Browser