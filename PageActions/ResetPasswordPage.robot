*** Settings ***
Documentation    This file has all the actions (Keywords) that will be performed on 'bonify -> Reset Password Page'
Resource    ../Configurations/GeneralConfigurations.robot

*** Keywords ***
On ResetPasswordPage Enter User Name
  [Arguments]   ${User_Name}
   Wait Until Element Is Visible    ${ResetPage_User_Name}     timeout=10s   error=User Name Text Box is not visible
   Wait Until Element Is Enabled    ${ResetPage_User_Name}     timeout=10s   error=User Name Text Box is not enabled
   Clear Element Text   ${ResetPage_User_Name}
   Input Text   ${ResetPage_User_Name}   ${User_Name}

On ResetPasswordPage Click On Submit Button
    Wait Until Element Is Visible    ${ResetPage_Submit_Button}     timeout=10s   error=Submit button is not visible
    Wait Until Element Is Enabled    ${ResetPage_Submit_Button}     timeout=10s   error=Submit button is not enabled
    Click element    ${ResetPage_Submit_Button}

Verify User Navigated To CheckEmail Page
    Wait Until Keyword Succeeds    30s  5s     Location Should be  ${CheckEmail_Page_URL}
    ${Current_Page_URL}     Get Location
    Should be equal    ${CheckEmail_Page_URL}    ${Current_Page_URL}

Verify success message received on CheckEmail Page
     Wait Until Element Is Visible    ${New_Password_Header}     timeout=10s   error=New Password Header is not visible
     Wait Until Element Is Visible    ${Passord_Reset_Success_Message}     timeout=10s   error=Password Reset Success Message is not visible
     ${Actual_Reset__Password_Success_Message}    Get Text    ${Passord_Reset_Success_Message}
     Should be equal    ${Actual_Reset_Password_Success_Message}     ${Expected_Reset_Password_Success_Message}