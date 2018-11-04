*** Settings ***
Documentation    This file will hold the general test data that will be used across differnt levels of testing
...              Expected web element texts, navigation URLs will be defined here

*** Variables ***
${Login_Page_URL}                           https://my.bonify.de/login?next=/
${Dashboard_Page_URL}                       https://my.bonify.de/
${Reset_Password_Page_URL}                  https://my.bonify.de/recover/send-email
${Registration_Page_URL}                    https://my.bonify.de/register/email
${Impressum_Page_URL}                       https://www.bonify.de/impressum
${AGB_Page_URL}                             https://www.bonify.de/agb
${datenschutz_Page_URL}                     https://www.bonify.de/datenschutz
${Signout_URL}                              https://my.bonify.de/login?next=/settings/user-account
${CheckEmail_Page_URL}                      https://my.bonify.de/recover/check-email

${Expected_Page_Title}                      bonify
${Expected_Header_Text}                     Willkommen bei bonify!
${Expected_User_Name_Default_Text}          Email / Benutzername
${Expected_User_Name_Mandatory_Message}     Trage bitte Deine Email-Adresse ein
${Expected_Password_Default_Text}           Passwort
${Expected_User_Name_Error_Message}         Bitte nutze eine gültige Email-Adresse
${Expected_Password_Mandotary_Message}      Trage bitte Dein Passwort ein
${Expected_Incorrct_Credentials_Message}    Leider passen Benutzername und Passwort nicht zusammen.
${Expected_forgot_password_link_Text}       Passwort vergessen?
${Expected_Login_Button_Text}               ANMELDUNG
${Expected_Register_Button_Text}            NEU REGISTRIEREN
${Expected_Impressum_link_Text}             Impressum
${Expected_AGB_link_Text}                   AGB
${Expected_Datenschutz_link_Text}           Datenschutz
${Expected_Footer_Text}                     Für die Sicherheit Deiner Daten arbeitet bonify mit:
${Expected_Reset_Password_Success_Message}  Vielen Dank! Wenn diese Email-Adresse bei bonify hinterlegt ist, haben wir eine Email mit einem Link zum Zurücksetzen des Passwortes verschickt. Diese sollte in den nächsten Sekunden bei Dir eintreffen.

