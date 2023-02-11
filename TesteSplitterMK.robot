*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${NAVEGADOR_CHROME}    chrome
${URL_PAGINA}   
${USER}    
${PASSWORD}

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
    Select Frame         xpath=/html/frameset/frame
    Select Frame         xpath=/html/body/iframe
    Click Button         xpath=//*[@id="1162115"]

Close Browser
    Sleep  5 seconds
    Close Browser


    