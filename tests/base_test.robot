*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${url}              http://127.0.0.1:9292
${navegador}        chrome        

*** Keywords ***
Iniciar sessão
    Open Browser        ${url}        ${navegador}

Encerrar sessão
    Capture Page Screenshot         
    Close Browser 