*** Settings ***
Documentation    This file has all the actions (Keywords) that will be performed on 'bonify -> Login Page'
Resource    ../Configurations/GeneralConfigurations.robot

*** Keywords ***
On LoginPage Enter User Name
  [Arguments]   ${User_Name}
   Wait Until Element Is Visible    ${User_name_Text_Box}     timeout=10s   error=User Name Text Box is not visible
   Wait Until Element Is Enabled    ${User_name_Text_Box}     timeout=10s   error=User Name Text Box is not enabled
   Clear Element Text   ${User_name_Text_Box}
   Input Text   ${User_name_Text_Box}   ${User_Name}

On LoginPage Enter Password
   [Arguments]   ${Password}
   Wait Until Element Is Visible    ${Password_Text_Box}     timeout=10s   error=Password Text Box is not visible
   Wait Until Element Is Enabled    ${Password_Text_Box}     timeout=10s   error=Password Text Box is not enabled
   Clear Element Text   ${Password_Text_Box}
   Input Text   ${Password_Text_Box}   ${Password}

On LoginPage Click On Login Button
   Wait Until Element Is Visible    ${Login_Button}     timeout=10s   error=Login Button is not visible
   Wait Until Element Is Enabled    ${Login_Button}     timeout=10s   error=Login Button is not enabled
   Click element    ${Login_Button}

Verify User Navigated To Dashboard Page
    [Arguments]     ${Expected_User_Name_On_Dashboard}
    Wait Until Element Is Visible   ${User_name_Menu_Dropdown}    timeout=10s   error=User Dropdown button on dashboard is not visible
    Wait Until Element Is Enabled   ${User_name_Menu_Dropdown}    timeout=10s   error=User Dropdown button on dashboard is not enabled
    ${Current_Page_URL}     Get Location
    Should be equal    ${Dashboard_Page_URL}  ${Current_Page_URL}
    ${Actual_User_Name_on_Dashboard}    Get Text    ${User_name_Menu_Dropdown}
    Should be equal    ${Expected_User_Name_On_Dashboard}  ${Actual_User_Name_on_Dashboard}

On LoginPage Click On Forgot Password Link
   Wait Until Element Is Visible    ${Forgot_Password_link}     timeout=10s   error=Forgot Password Link is not visible
   Wait Until Element Is Enabled    ${Forgot_Password_link}     timeout=10s   error=Forgot Password Link is not enabled
   Click element    ${Forgot_Password_link}

Verify User Navigated To Reset Password Page
    Wait Until Keyword Succeeds    30s  5s     Location Should be  ${Reset_Password_Page_URL}
    ${Current_Page_URL}     Get Location
    Should be equal    ${Reset_Password_Page_URL}    ${Current_Page_URL}

On LoginPage Click On Registration Button
    Wait Until Element Is Visible    ${Register_Button}     timeout=10s   error=Registration button is not visible
    Wait Until Element Is Enabled    ${Register_Button}     timeout=10s   error=Registration button is not enabled
    Click element    ${Register_Button}

Verify User Navigated To Registration Page
    Wait Until Keyword Succeeds    30s  5s     Location Should be  ${Registration_Page_URL}
    ${Current_Page_URL}     Get Location
    Should be equal    ${Registration_Page_URL}    ${Current_Page_URL}

On LoginPage Click On Impressum Link
    Wait Until Element Is Visible    ${Impressum_Link}     timeout=10s   error=Impressum Link is not visible
    Wait Until Element Is Enabled    ${Impressum_Link}     timeout=10s   error=Impressum Link is not enabled
    Click Element   ${Impressum_Link}

Verify User Navigated To Impressum Page

    @{windows}   List Windows
    ${numWindows}   Get Length  ${windows}
    Should Be True  ${numWindows} > 1
    Select Window   @{windows}[1]
    Location Should Be  ${Impressum_Page_URL}
    Close Window
    select Window   @{windows}[0]
    Location Should Be  ${Login_Page_URL}

On LoginPage Click On AGB Link
    Wait Until Element Is Visible    ${AGB_Link}     timeout=10s   error=AGB Link is not visible
    Wait Until Element Is Enabled    ${AGB_Link}     timeout=10s   error=AGB Link is not enabled
    Click element    ${AGB_Link}

Verify User Navigated To AGB Page
    @{windows}   List Windows
    ${numWindows}   Get Length  ${windows}
    Should Be True  ${numWindows} > 1
    Select Window   @{windows}[1]
    Location Should Be  ${AGB_Page_URL}
    Close Window
    select Window   @{windows}[0]
    Location Should Be  ${Login_Page_URL}

On LoginPage Click On Datenschutz Link
    Wait Until Element Is Visible    ${Datenschutz_Link}     timeout=10s   error=Datenschutz Link is not visible
    Wait Until Element Is Enabled    ${Datenschutz_Link}     timeout=10s   error=Datenschutz Link is not enabled
    Click element    ${Datenschutz_Link}

Verify User Navigated To Datenschutz Page
    @{windows}   List Windows
    ${numWindows}   Get Length  ${windows}
    Should Be True  ${numWindows} > 1
    Select Window   @{windows}[1]
    Location Should Be  ${datenschutz_Page_URL}
    Close Window
    select Window   @{windows}[0]
    Location Should Be  ${Login_Page_URL}

Verify User Name Mandatory message is displayed to the user
    Sleep   1s
    Wait Until Element Is Visible    ${User_Name_Error}     timeout=10s   error=User Name Mandatory message is not visible
    ${Actual_User_Name_Mandatory_Message}   Get text    ${User_Name_Error}
    Should be equal    ${Actual_User_Name_Mandatory_Message}   ${Expected_User_Name_Mandatory_Message}

Verify Login error message is displayed to the user
    Wait Until Element Is Visible    ${General_Error}     timeout=10s   error=Login Error message is not visible
    ${Actual_Login_Error_Message}   Get text    ${General_Error}
    Should be equal    ${Actual_Login_Error_Message}   ${Expected_Incorrct_Credentials_Message}

Verify Invalid User Name message is displayed to the user
    Sleep   1s
    Wait Until Element Is Visible    ${User_Name_Error}     timeout=10s   error=Invalid User Name message is not visible
    ${Actual_User_Name_Invalid_Message}   Get text    ${User_Name_Error}
    Should be equal    ${Actual_User_Name_Invalid_Message}   ${Expected_User_Name_Error_Message}

Verify Password Mandatory message is displayed to the user
    Sleep   1s
    Wait Until Element Is Visible    ${Password_Error}     timeout=10s   error=Password Mandatory message is not visible
    ${Actual_Password_Mandatory_Message}   Get text    ${Password_Error}
    Should be equal    ${Actual_Password_Mandatory_Message}  ${Expected_Password_Mandotary_Message}

Logout
    Wait Until Element is Visible   ${Expand_Icon_At_User_ID}   timeout=10s   error=Expand icon is not visible is not visible
    Click Element   ${Expand_Icon_At_User_ID}
    Sleep   2s
    Wait Until Element is Visible   ${Signout_Button}    timeout=10s   error=Signout button is not visible is not visible
    Click Element   ${Signout_Button}
    Sleep   2s
    Wait Until Keyword Succeeds    30s  5s     Location Should be  ${Login_Page_URL}