*** Settings ***
Library     SeleniumLibrary
Resource    ../../resources/base.resource


*** Keywords ***
Dado que eu acesse o site Training Wheels Protocol
    Iniciar sessão

Quando eu validar o título da tela Home
    Get Title

Então na tela Home deverá apresentar o título Training Wheels Protocol
    Title Should Be    Training Wheels Protocol
