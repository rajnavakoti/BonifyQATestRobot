*** Settings ***
Documentation    This file is the stroge of web element attributes of 'bonify' web application
...              Each variable defines the path of single element on the web page
...              Variable names must be unquie. Best way is to place the page name in the starting of every variable name

*** Variables ***

## Login Page ##

${Header_Text}                              xpath://div[@class='login-panel']/h1
${Username_default_Text}                    xpath://label[@for='email']
${User_name_Text_Box}                       xpath://input[@name='email']
${User_name_Label}                          xpath=//label[@for='email']
${User_Name_Error}                          xpath://div[@class='login-panel']/form/div/div[2]/span
${Password_Text_Box}                        xpath://input[@name='password']
${Password_Label}                           xpath://label[@for='password']
${Password_Error}                           xpath://div[@class='login-panel']/form/div[2]/div[2]/span
${Forgot_Password_link}                     xpath://a[contains(@href,'recover')]
${Login_Button}                             xpath://button[@type='submit']
${Register_Button}                          xpath://a[contains(@href,'register/email')]
${Impressum_Link}                           xpath://a[contains(@href,'bonify.de/impressum')]
${AGB_Link}                                 xpath://a[contains(@href,'bonify.de/agb')]
${Datenschutz_Link}                         xpath://a[contains(@href,'bonify.de/datenschutz')]
${Footer_Text}                              xpath://footer/div
${General_Error}                            xpath://p[@class='general-error']


## Dashboard Page ##
${User_name_Menu_Dropdown}                  xpath://header/div/div/div[2]
${Expand_Icon_At_User_ID}                   xpath://i[@class='right ico-bonify-expand']
${Signout_Button}                           xpath://*[@id="main-body"]/ul[1]/li[4]/button[1]

## Reset Password Paage ##
${ResetPage_User_Name}                      xpath://input[@name='email']
${ResetPage_Submit_Button}                  xpath://button[@type='submit']
${New_Password_Header}                      xpath://div[@class='recover-password-panel']/div/div/div/div/h1
${Passord_Reset_Success_Message}            xpath://div[@class='recover-password-panel']/div/div/div/div/p