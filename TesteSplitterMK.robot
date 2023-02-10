RobotF Extension - KMK Labs
Python - Microsoft
Pylance

*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${NAVEGADOR_CHROME}    chrome
${URL_PAGINA}   'https://mk3-8312.mksolutions.com.br/mk'  
${USER}    'dionatan'
${PASSWORD}   'Dio@1234567' 

*** Test Cases ***
Abrir o navegador
    Open 
    Insert user 
    [Teardown]    Close Browser

*** Keywords ***
Open
    Open Browser     ${URL_PAGINA}    ${NAVEGADOR_CHROME}
    Maximize Browser Window

Insert user
    Sleep  2 seconds
    Click Element        locator=//*[@id="dataConnectionOpt"] 
    Click Element        locator=//*[@id="dataConnectionOpt"]/option[5]
    Input Text           xpath=/html/body/div/div[2]/form/input[2]    text=${USER}
    Input Password       xpath=/html/body/div/div[2]/form/input[3]    password=${PASSWORD} 
    Click Button         xpath=/html/body/div/div[2]/form/button
    Click Element        locator=//*[@id="1162115"] 

Close Browser
    Sleep  5 seconds
    Close Browser


    