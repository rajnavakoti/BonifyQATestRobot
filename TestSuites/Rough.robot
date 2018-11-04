*** Settings ***
Documentation    Suite description
Library  Selenium2Library
Resource    ../Configurations/BrowserConfigurations.robot
Resource    ../Configurations/GeneralConfigurations.robot
Resource    ../ObjectRepository/PageObjects.robot
Resource    ../TestData/Sanity.robot

#Suite Setup        Set Up - Smoke Suite
#Suite Teardown     Tear Down - Smoke Suite

*** Test Cases ***
Test Case 01 Verify Login With Valid Credentials
    [Tags]    Sanity    Positive

    Open Browser    http://my.bonify.de     chrome
    Click element   xpath://a[contains(@href,'bonify.de/impressum')]
    @{windows}   List Windows
    ${numWindows}   Get Length  ${windows}
    Select Window   @{windows}[1]
    ${url}  Get Location
    Log to console  ${numWindows}
    Log to Console  ${url}
    Close Window
    select Window   @{windows}[0]
    ${newurl}   Get Location
    Log to Console  ${newurl}
