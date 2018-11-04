*** Settings ***
Documentation    This file holds the general variables and kyewords that will be used across the application testing
...              Variables: Path to where the screenshots need to be saved
...              Keywords to take screenshots of webpage and focusing on the elements

*** Variables ***
${Sanity_SS_Path}   ../BonifyQATestRobot/Screenshots/Sanity
${Smoke_SS_Path}   ../BonifyQATestRobot/Screenshots/Smoke
${Regression_SS_Path}  ../BonifyQATestRobot/Screenshots/Regression
${Screenshot_File_Type}     png


*** Keywords ***
Capture webpage screenshot
    [Arguments]     ${File_Name}    ${Path}
    Set Screenshot Directory    ${Path}
    Capture Page Screenshot     ${File_Name}.${Screenshot_File_Type}

Focus on element and take screenshot
    [Arguments]     ${ele}   ${File_Name}    ${Path}
    Set Focus To Element    ${ele}
    Sleep   1s
    Set Screenshot Directory    ${Path}
    Capture Page Screenshot     ${File_Name}.${Screenshot_File_Type}