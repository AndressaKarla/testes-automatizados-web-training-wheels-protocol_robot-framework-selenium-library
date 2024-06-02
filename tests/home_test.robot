*** Settings ***
Resource            ../resources/keywords/home_keyword.robot

Test Teardown       Encerrar sessão


*** Test Cases ***
Cenario: Validar título da tela Home
    [Tags]    titulo_home
    Dado que eu acesse o site Training Wheels Protocol
    Quando eu validar o título da tela Home
    Então na tela Home deverá apresentar o título Training Wheels Protocol
