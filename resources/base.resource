*** Settings ***
Documentation       Arquivo base com inicializações

Library             SeleniumLibrary
Resource            env.resource
Variables           environments/${ENV}.json


*** Variables ***
${URL}                  ${base_url}
${BROWSER_CHROME}       chrome
${BROWSER_FIREFOX}      firefox
${HEADLESS_CHROME}      headlesschrome
${HEADLESS_FIREFOX}     headlessfirefox


*** Keywords ***
Iniciar sessão
    IF    '${BROWSER}' == 'headlesschrome'
        Open Browser    ${URL}    ${HEADLESS_CHROME}
    ELSE IF    '${BROWSER}' == 'headlessfirefox'
        Open Browser    ${URL}    ${HEADLESS_FIREFOX}
    ELSE IF    '${BROWSER}' == 'firefox'
        Open Browser    ${URL}    ${BROWSER_FIREFOX}
    ELSE
        Open Browser    ${URL}    ${BROWSER_CHROME}
    END

    Set Window Size    1280    720

Encerrar sessão
    Capture Page Screenshot
    Close Browser
