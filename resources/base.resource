*** Settings ***
Documentation       Arquivo base com inicializações

Library         SeleniumLibrary
Resource        env.resource
Variables       environments/${ENV}.json


*** Variables ***
${URL}                  ${base_url}
${BROWSER_CHROME}       chrome
${BROWSER_FIREFOX}      firefox


*** Keywords ***
Iniciar sessão
    IF    '${BROWSER}' == 'chrome'
        Open Browser    ${URL}    ${BROWSER_CHROME}
    ELSE IF    '${BROWSER}' == 'firefox'
        Open Browser    ${URL}    ${BROWSER_FIREFOX}
    END

Encerrar sessão
    Capture Page Screenshot
    Close Browser
