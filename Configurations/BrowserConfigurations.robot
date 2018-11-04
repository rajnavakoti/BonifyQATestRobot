*** Settings ***
Documentation    This file will hold the details of Browser configurations
...              URL: Base url to open the web application
...              Browser to be used to intiate the test
...              Drivers (Gecko, chrome, IE) executable path

*** Variables ***
${URL}               http://my.bonify.de
${Browser}           chrome

${Chorme_Driver}    ./Drivers/chromedriver.exe
${IEDriver}         ./Drivers/IEDriverServer.exe
${GeckDriver}       ./Drivers/geckodriver.exe